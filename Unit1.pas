//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    EditName: TEdit;
    EditPhone: TEdit;
    BtnAddContact: TButton;
    BtnShowContacts: TButton;
    BtnDeleteContact: TButton;
    MemoContacts: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAddContactClick(Sender: TObject);
    procedure BtnShowContactsClick(Sender: TObject);
    procedure BtnDeleteContactClick(Sender: TObject);
  private
    { Private declarations }
    Contacts: TDictionary<String, String>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Inicializa o dicionário
  Contacts := TDictionary<String, String>.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  // Libera o dicionário ao fechar o formulário
  Contacts.Free;
end;

procedure TForm1.BtnAddContactClick(Sender: TObject);
var
  Name, Phone: String;

begin

  Name := EditName.Text;
  Phone := EditPhone.Text;

  if (Name = '') or (Phone = '') then
  begin
    ShowMessage('Por favor, preencha ambos os campos.');
    Exit;
  end;

  // Adiciona ou atualiza o contato no dicionário
  Contacts.AddOrSetValue(Name, Phone);
  ShowMessage(Format('Contato %s adicionado/atualizado com sucesso.', [Name]));
  EditName.Clear;
  EditPhone.Clear;

end;

procedure TForm1.BtnDeleteContactClick(Sender: TObject);
var
  Name: String;

begin

  //Deleta o contato a partir do nome digitado
  Name := EditName.Text;

  if Contacts.ContainsKey(Name) then
  begin
    Contacts.Remove(Name);
    ShowMessage(Format('Contato %s removido com sucesso.', [Name]));
    EditName.Clear;
  end
  else
  begin
    ShowMessage(Format('Contato %s não encontrado.', [Name]));
  end;
end;

procedure TForm1.BtnShowContactsClick(Sender: TObject);
var
  Pair: TPair<String, String>;

begin
  MemoContacts.Clear;

  for Pair in Contacts do
  begin
    MemoContacts.Lines.Add(Format('Nome: %s, Telefone: %s', [Pair.Key, Pair.Value]));
  end;

end;

end.
