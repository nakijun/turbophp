unit RawDocument;

interface

uses
	Classes, Forms, Types,
	LrDocument;

type
	TRawDocument = class(TLrDocument)
	private
		FStrings: TStringList;
    FEditPos: TPoint;
	protected
		function GetExtension: string; override;
		function GetFilter: string; override;
		procedure SetStrings(const Value: TStringList);
	public
		constructor Create(inManager: TLrDocumentManager;
			const inPath: string = ''); override;
		destructor Destroy; override;
		procedure Open; override;
		procedure PerformAction(inAction: TLrDocumentAction); override;
		procedure Save; override;
		property EditPos: TPoint read FEditPos write FEditPos;
		property Strings: TStringList read FStrings write SetStrings;
	end;

implementation

{ TRawDocument }

constructor TRawDocument.Create(inManager: TLrDocumentManager;
	const inPath: string);
begin
	inherited;
	FStrings := TStringList.Create;
end;

destructor TRawDocument.Destroy;
begin
	FStrings.Free;
	inherited;
end;

procedure TRawDocument.SetStrings(const Value: TStringList);
begin
	FStrings.Assign(Value);
end;

function TRawDocument.GetExtension: string;
begin
	Result := '.php';
end;

function TRawDocument.GetFilter: string;
begin
	Result := 'Php Files (*.php)|*.php|Any File (*.*)|*.*';
end;

procedure TRawDocument.Open;
begin
	if not Untitled then
		Strings.LoadFromFile(Path);
end;

procedure TRawDocument.Save;
begin
	inherited;
	Strings.SaveToFile(Path);
end;

procedure TRawDocument.PerformAction(inAction: TLrDocumentAction);
begin
	inherited;
	if inAction.Name = 'PublishAction' then
	begin
	end;
end;

end.
                                                                                                                                                                                                                                                                                                                                                                                                                              MenuItem;
    NewProject1: TMenuItem;
		Open2: TMenuItem;
    OpenProject1: TMenuItem;
    N1: TMenuItem;
		Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Close1: TMenuItem;
    N2: TMenuItem;
    CloseAll1: TMenuItem;
    SaveProjectAs1: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
		View1: TMenuItem;
		SaveAs2: TMenuItem;
		SaveLayout1: TMenuItem;
		Project1: TMenuItem;
		ProjectOptions1: TMenuItem;
		Publish2: TMenuItem;
		Compeonnt1: TMenuItem;
    InstallPackages1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Publish1: TMenuItem;
		OpenProjectDialog: TOpenDialog;
    SaveProject1: TMenuItem;
		SaveProjectDialog: TSaveDialog;
    HelpDock: TdxDockPanel;
		SourceExplorerDock: TdxDockPanel;
    PublishExplorerDock: TdxDockPanel;
    ClientDockSite: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxTabContainerDockSite2: TdxTabContainerDockSite;
    DesignDock: TdxDockPanel;
    DesignPages: TcxPageControl;
    DesignSheet: TcxTabSheet;
		RulersLeftPanel: TPanel;
    LeftRuler: TRsRuler;
		RulesTopPanel: TPanel;
    TopRuler: TRsRuler;
    RsRulerCorner1: TRsRulerCorner;
    OutputSheet: TcxTabSheet;
		HideSheet: TcxTabSheet;
    PhpDock: TdxDockPanel;
    JsDock: TdxDockPanel;
    PreviewDock: TdxDockPanel;
    ComponentListDock: TdxDockPanel;
    ControlTreeDock: TdxDockPanel;
    InspectorDock: TdxDockPanel;
    DocumentPanel: TPanel;
    CaptionPanel: TPanel;
		TabControl: TcxTabControl;
		CaptionButtonsPanel: TPanel;
    CloseButton: TDCSpeedButton;
    Shape1: TShape;
    HidePanel: TPanel;
    HtmlDock: TdxDockPanel;
    dxHorizContainerDockSite1: TdxHorizContainerDockSite;
    dxVertContainerDockSite2: TdxVertContainerDockSite;
		dxTabContainerDockSite3: TdxTabContainerDockSite;
		ObjectInspectorAction: TAction;
    N6: TMenuItem;
    ObjectInspector1: TMenuItem;
    ComponentListAction: TAction;
    ControlTreeAction: TAction;
    SourceExplorerAction: TAction;
    PublishExplorerAction: TAction;
    HelpPanelAction: TAction;
    ComponentList1: TMenuItem;
		ControlTree1: TMenuItem;
		DCPackageLoader: TDCPackageLoader;
		RevertLayoutAction: TAction;
		RevertLayout1: TMenuItem;
		N7: TMenuItem;
		SourceExplorer1: TMenuItem;
		PublishExplorer1: TMenuItem;
		HelpPanel1: TMenuItem;
    DefaultLayoutAction: TAction;
    DefaultLayout1: TMenuItem;
    MadExceptionHandler: TMadExceptionHandler;
    DebugDock: TdxDockPanel;
    DebugViewAction: TAction;
    DebugView1: TMenuItem;
		procedure FormCreate(Sender: TObject);
		procedure OpenActionExecute(Sender: TObject);
		procedure PublishActionExecute(Sender: TObject);
		procedure SaveLayoutActionExecute(Sender: TObject);
		procedure LoadLayoutActionExecute(Sender: TObject);
		procedure NewActionExecute(Sender: TObject);
		procedure DesignerCopyActionExecute(Sender: TObject);
		procedure DesignerCutActionExecute(Sender: TObject);
		procedure DesignerPasteActionExecute(Sender: TObject);
		procedure DesignerDeleteActionExecute(Sender: TObject);
		procedure DesignerCopyActionUpdate(Sender: TObject);
		procedure DesignerCutActionUpdate(Sender: TObject);
		procedure DesignerPasteActionUpdate(Sender: TObject);
		procedure DesignerDeleteActionUpdate(Sender: TObject);
		procedure SaveActionExecute(Sender: TObject);
		procedure SaveActionUpdate(Sender: TObject);
		procedure SaveAsActionUpdate(Sender: TObject);
		procedure SaveAsActionExecute(Sender: TObject);
		procedure dxDockingManagerLayoutChanged(Sender: TdxCustomDockControl);
		procedure dxDockingManagerCreateFloatSite(
			Sender: TdxCustomDockControl; AFloatSite: TdxFloatDockSite);
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure OpenProjectActionExecute(Sender: TObject);
		procedure FormDestroy(Sender: TObject);
		procedure ActionRequiringProjectUpdate(Sender: TObject);
		procedure ProjectOptionsActionExecute(Sender: TObject);
		procedure NewProjectActionExecute(Sender: TObject);
		procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
		procedure SaveProjectActionUpdate(Sender: TObject);
		procedure SaveProjectActionExecute(Sender: TObject);
		procedure SaveProjectAsActionExecute(Sender: TObject);
		procedure SaveOrSaveAsActionExecute(Sender: TObject);
		procedure ExplorerTreeDblClick(Sender: TObject);
		procedure CloseActionUpdate(Sender: TObject);
		procedure CloseActionExecute(Sender: TObject);
		procedure CloseAllActionExecute(Sender: TObject);
		procedure ExitActionExecute(Sender: TObject);
		procedure TabControlChange(Sender: TObject);
		procedure NeedPageDocActionUpdate(Sender: TObject);
		procedure ObjectInspectorActionExecute(Sender: TObject);
		procedure ComponentListActionExecute(Sender: TObject);
		procedure ControlTreeActionExecute(Sender: TObject);
		procedure dxDockingManagerCreateSideContainer(
			Sender: TdxCustomDockControl;
			ASideContainer: TdxSideContainerDockSite);
		procedure InstallPackagesActionExecute(Sender: TObject);
		procedure DesignPagesChange(Sender: TObject);
		procedure RevertLayoutActionExecute(Sender: TObject);
		procedure NoCloseQuery(Sender: TdxCustomDockControl;
			var CanClose: Boolean);
		procedure SourceExplorerActionExecute(Sender: TObject);
		procedure PublishExplorerActionExecute(Sender: TObject);
		procedure PropStoreLoadChanges(Sender: TObject;
			var processed: Boolean);
    procedure DefaultLayoutActionExecute(Sender: TObject);
		procedure MadExceptionHandlerException(frozen: Boolean;
			exceptObject: TObject; exceptAddr: Pointer; var bugReport: String;
			var canContinue, handled: Boolean);
    procedure DebugViewActionExecute(Sender: TObject);
	private
		{ Private declarations }
		FDefaultLayout: string;
		function ComponentHelp(inComponent: TPersistent;
			const inProperty: string): Boolean;
		function GetActiveDesigner: TDCLiteDesigner;
		function GetDocument: TLrDocument;
		function GetFileFilter: string;
		function GetPageController: TPageController;
		function GetPageDocument: TPageDocument;
		function OpenDocument(inManager: TLrDocumentManager;
			const inPath: string): TLrDocument;
		function PropertyHelp(const inName, inProperty: string): Boolean;
		procedure CurrentProjectChanged(inSender: TObject);
		procedure CurrentChanged(inSender: TObject);
		procedure CurrentChanging(inSender: TObject);
		procedure DocumentProjectSettingsChange;
		procedure FixFloatForm(inForm: TCustomForm);
		procedure FixFloatForms;
		function IsPageDocument: Boolean;
		procedure LoadDefaultLayout;
		procedure LoadLayout(const inFilename: string);
		procedure SaveLayout(const inFilename: string);
		procedure SelectRawDocument;
		procedure SelectPageDocument;
		procedure ShowPhpSource(Sender: TObject; inX, inY: Integer);
		procedure PageDocumentProjectSettingsChange(inDoc: TPageDocument);
		procedure PublishPageDocument(inDocument: TPageDocument);
		procedure UpdateTabs;
		procedure UpdateDocument(inSender: TObject;	inDocument: TLrDocument);
    function GetProject: TProject;
	protected
		Painted: Boolean;
	public
		{ Public declarations }
		DebugForm: TDebugForm;
		DocMgr: TLrDocumentManager;
		HelpForm: THelpForm;
		LastEditor: TWinControl;
		PageView: TPageView;
		PhpController: TPhpDocumentController;
		PhpEditForm: TPhpEditForm;
		ProjectMgr: TLrProjectManager;
		PublishExplorerForm: TExplorerForm;
		SourceExplorerForm: TExplorerForm;
	public
		procedure EditorEnter(Sender: TObject);
		procedure InspectorActivePropertyChanged(Sender: TObject);
		procedure InspectorHelp;
	public
		property ActiveDesigner: TDCLiteDesigner read GetActiveDesigner;
		property DefaultLayout: string read FDefaultLayout write FDefaultLayout;
		property Document: TLrDocument read GetDocument;
		property PageDocument: TPageDocument read GetPageDocument;
		property PageController: TPageController read GetPageController;
		property Project: TProject read GetProject;
	end;

var
	MainForm: TMainForm;

implementation

uses
	StrUtils,
	GifImage, PngImage,
	LrUtils, LrDockUtils,
	Strings,
	RawDocument, 
	Registration, Config, ProjectOptions, PhpEventProperty, JsInspector,
	TpPictureProperty, HtmlEditView, InspectorView;

{$R *.dfm}

const
	SLRRegKey = 'Software\Least-Resistance Software\';
	STPRegKey = 'TurboPhp\';
	SVersionKey = '4';
	SRegKey = SLRRegKey + STPRegKey + SVersionKey;

const
	cDefaultLayoutFile = 'default.turbophp.cfg';
	cInitialLayoutFile = 'layout.turbophp.cfg';
	cProjectManagerFile = 'projects.turbophp.cfg';
	cPropsFile = 'desk.turbophp.cfg';

procedure TMainForm.FormCreate(Sender: TObject);
begin
	try
		dcsystem.RegistryKey := SRegKey;
		//
		Registration.Register;
		DCPackageLoader.DefaultLoadConfig;
		//
		AddForm(HelpForm, THelpForm, HelpDock);
		//
		AddForm(SourceExplorerForm, TExplorerForm, SourceExplorerDock);
		SourceExplorerForm.ExplorerTree.OnDblClick := ExplorerTreeDblClick;
		//
		AddForm(PublishExplorerForm, TExplorerForm, PublishExplorerDock);
		PublishExplorerForm.ExplorerTree.OnDblClick := ExplorerTreeDblClick;
		//
		ProjectMgr := TLrProjectManager.Create;
		ProjectMgr.Filename := ConfigFolder + cProjectManagerFile;
		ProjectMgr.SaveDialog := SaveProjectDialog;
		ProjectMgr.OnCurrentProjectChanged := CurrentProjectChanged;
		//
		DocMgr := TLrDocumentManager.Create;
		DocMgr.OnOpen := OpenDocument;
		DocMgr.OnCurrentChanged := CurrentChanged;
		DocMgr.OnCurrentChanging := CurrentChanging;
		DocMgr.OnUpdateDocument := UpdateDocument;
		DocMgr.RegisterExtensions([ '.tppage', '.turbophp' ], TPageDocument);
		DocMgr.RegisterExtensions([ '.php' ], TRawDocument);
		//
		PageView := TPageView.Create(Self);
		//
		PhpController := TPhpDocumentController.Create(Self);
		//
		AddForm(PhpEditForm, TPhpEditForm, PhpDock);
		PhpEditForm.CodeDesigner.OnShowSource := ShowPhpSource;
		PhpEditForm.Edit.OnEnter := EditorEnter;
		TPhpEventProperty.SetCodeDesigner(PhpEditForm.CodeDesigner);
		//
		OpenDialog.Filter := GetFileFilter;
		SaveLayoutDialog.InitialDir := ConfigFolder;
		OpenLayoutDialog.InitialDir := ConfigFolder;
		//
		LoadDefaultLayout;
		//
		NewProjectAction.Execute;
		NewAction.Execute;
		//
		ProjectMgr.OpenDefaultProject;
		//
		AddForm(DebugForm, TDebugForm, DebugDock);
	except
	end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
	DocMgr.Free;
	ProjectMgr.Free;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	ProjectMgr.Save;
	SaveLayout(DefaultLayout);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
	CanClose := DocMgr.CloseAll and ProjectMgr.CloseProject;
end;

procedure TMainForm.PropStoreLoadChanges(Sender: TObject;
	var processed: Boolean);
begin
	PropStore.IniFile := ConfigFolder + cPropsFile;
end;

procedure TMainForm.LoadDefaultLayout;
begin
	DefaultLayout := ConfigFolder + cDefaultLayoutFile;
	if not FileExists(DefaultLayout) then
		DefaultLayout := ConfigFolder + cInitialLayoutFile;
	LoadLayout(DefaultLayout);
end;

procedure TMainForm.RevertLayoutActionExecute(Sender: TObject);
begin
	LoadLayout(DefaultLayout);
end;

procedure TMainForm.DefaultLayoutActionExecute(Sender: TObject);
begin
	LoadLayout(ConfigFolder + cInitialLayoutFile);
end;

function TMainForm.GetFileFilter: string;
begin
	Result := ExtensionsToFilter(
		[ cPageDocumentFileExtension,	'.turbophp', '.php', '.html', '.htm' ]);
end;

procedure TMainForm.EditorEnter(Sender: TObject);
begin
	if Sender is TWinControl then
		LastEditor := TWinControl(Sender);
end;

procedure TMainForm.UpdateTabs;
var
	i, s: Integer;
begin
	with TabControl do
	try
		OnChange := nil;
		s := TabIndex;
		Tabs.BeginUpdate;
		Tabs.Clear;
		for i := 0 to Pred(DocMgr.Count) do
		begin
			Tabs.Add(DocMgr.Items[i].DisplayName);
			if DocMgr.Items[i] = DocMgr.Current then
				s := i;
		end;
		if (s < 0) then
			s := 0;
		if (s < Tabs.Count) then
			TabIndex := s;
	finally
		Tabs.EndUpdate;
		OnChange := TabControlChange;
	end;
	CloseButton.Enabled := TabControl.Tabs.Count > 0;
	Shape1.Visible := CloseButton.Enabled;
end;

procedure TMainForm.TabControlChange(Sender: TObject);
begin
	if TabControl.TabIndex >= 0 then
		DocMgr.Current := DocMgr.Items[TabControl.TabIndex];
end;

function TMainForm.GetProject: TProject;
begin
	Result := TProject(ProjectMgr.CurrentProject);
end;

function TMainForm.GetDocument: TLrDocument;
begin
	Result := DocMgr.Current;
end;

function TMainForm.IsPageDocument: Boolean;
begin
	Result := Document is TPageDocument;
end;

function TMainForm.GetPageDocument: TPageDocument;
begin
	if Document is TPageDocument then
		Result := TPageDocument(Document)
	else
		Result := nil;
end;

function TMainForm.GetPageController: TPageController;
begin
	Result := TPageController(PageDocument.Controller);
end;

procedure TMainForm.NewActionExecute(Sender: TObject);
begin
	DocMgr.New(TPageDocument);
	{DocumentForm.}UpdateTabs;
	ActivateDock(DesignDock);
end;

procedure TMainForm.OpenActionExecute(Sender: TObject);
begin
	if OpenDialog.Execute then
		DocMgr.Open(OpenDialog.Filename);
end;

function TMainForm.OpenDocument(inManager: TLrDocumentManager;
	const inPath: string): TLrDocument;
var
	e, m: string;
	c: TLrDocumentClass;
begin
	c := nil;
	e := LowerCase(ExtractFileExt(inPath));
	m := GraphicFileMask(TGraphic);
	if (Pos(e, m) > 0) then
	;
//		c := TImageDocument
//	else if (e = '.turbohtml') then
//		c := THtmlPageDocument
//	else if (e = '.htm') or (e = '.html') then
//		c := TRawDocument;
{
	else if (e = '.turboprj') then
	begin
		OpenProject(inPath);
		Result := nil;
	end
}
	if c = nil then
		Result := nil
	else
		Result := c.Create(inManager, inPath);
end;

procedure TMainForm.SaveActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := DocMgr.EnableSave;
end;

procedure TMainForm.SaveAsActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := DocMgr.EnableSaveAs;
end;

procedure TMainForm.SaveActionExecute(Sender: TObject);
begin
	DocMgr.Save;
end;

procedure TMainForm.SaveAsActionExecute(Sender: TObject);
begin
	DocMgr.SaveAs;
	SourceExplorerForm.ExplorerTree.RefreshTree;
	DocumentProjectSettingsChange;
end;

procedure TMainForm.SaveOrSaveAsActionExecute(Sender: TObject);
begin
	DocMgr.Save;
	SourceExplorerForm.ExplorerTree.RefreshTree;
end;

procedure TMainForm.PageDocumentProjectSettingsChange(inDoc: TPageDocument);
begin
{
	with ProjectMgr.CurrentProject do
	begin
		inDoc.LibFolder := PublishFolder + 'libs\';
		inDoc.PublishFolder := GetRelativePublishFolder(inDoc.Path);
	end;
}
	with inDoc do
		TTpPicturePathProperty.SetPaths(PublishFolder, PublishFolder + 'images\');
end;

procedure TMainForm.DocumentProjectSettingsChange;
begin
	if PageDocument <> nil then
		PageDocumentProjectSettingsChange(PageDocument);
end;

procedure TMainForm.UpdateDocument(inSender: TObject; inDocument: TLrDocument);
begin
{
	if IsPageDocument then
		PageController.SyncDocumentToView
	else if (inDocument is TRawDocument) then
		with TRawDocument(inDocument) do
		begin
			Strings.Assign(PhpEditForm.Source.Strings);
			EditPos := PhpEditForm.Edit.CaretPos;
		end;
}
end;

procedure TMainForm.CurrentChanging(inSender: TObject);
begin
	//if IsPageDocument then
	//	PageController.Deactivate;
	//UpdateDocument(nil, Document);
end;

procedure TMainForm.SelectRawDocument;
begin
	InspectorDock.Visible := false;
	ControlTreeDock.Visible := false;
	ComponentListDock.Visible := false;
	DesignDock.Visible := false;
	JsDock.Visible := false;
	PhpController.Document := TRawDocument(Document);
	with TRawDocument(Document) do
		PhpEditForm.Source.JumpTo(EditPos.X, EditPos.Y);
	MainForm.PhpEditForm.OnModified := Document.ChangeEvent;
end;

procedure TMainForm.SelectPageDocument;
begin
	if Document.Controller = nil then
		Document.Controller := TPageController.Create(PageDocument);
end;

procedure TMainForm.CurrentChanged(inSender: TObject);
begin
	if (PhpController.Document <> nil) then
		UpdateDocument(nil, PhpController.Document);
	PhpController.Document := nil;
	//
//	if (PageController.Document <> nil) then
//		UpdateDocument(nil, PageController.Document);
//	PageController.Document := nil;
	//
	UpdateTabs;
	HidePanel.SendToBack;
	//
	if (DocMgr.Current is TRawDocument) then
		SelectRawDocument
	else if IsPageDocument then
		SelectPageDocument
	else
		HidePanel.BringToFront;
	//
	DocumentProjectSettingsChange;
end;

procedure TMainForm.PublishPageDocument(inDocument: TPageDocument);
begin
	with inDocument do
		if (Project.PublishFolder = '') or (Project.SourceFolder = '') then
			MessageDlg(SNeedProjectFolders, mtError, [ mbOk ], 0)
		else if not Project.IsOnProjectPath(Path) then
			MessageDlg(SDocNotInProject, mtError, [ mbOk ], 0)
		else begin
			LibFolder := Project.LibFolder;
			PublishFolder := Project.GetRelativePublishFolder(Path);
			//
			Publish;
			//
			PhpEditForm.Source.Strings.Assign(Page.PhpSource);
			if FileExists(PublishFolder + HtmlFilename) then
				PageView.HtmlEditForm.Source.LoadFromFile(PublishFolder + HtmlFilename);
			//
			if Page.PreviewOnPublish and (Project.Url <> '') then
			begin
				ActivateDock(PreviewDock);
				PageView.BrowserForm.ForceNavigate(
					Project.PathToProjectUrl(PublishFolder) + PhpFilename);
			end;
			//
			PublishExplorerForm.ExplorerTree.RefreshTree;
		end;
end;

procedure TMainForm.PublishActionExecute(Sender: TObject);
begin
	if (Document is TRawDocument) then
	begin
		ActivateDock(PreviewDock);
		//PreviewForm.Navigate(DocMgr.Current.Path);
	end
	else if IsPageDocument then
		PublishPageDocument(PageDocument);
end;

procedure TMainForm.FixFloatForm(inForm: TCustomForm);
begin
	if inForm <> nil then
		inForm.BorderStyle := bsSizeable;
end;

procedure TMainForm.dxDockingManagerCreateFloatSite(
	Sender: TdxCustomDockControl; AFloatSite: TdxFloatDockSite);
begin
	FixFloatForm(Sender.FloatForm);
end;

procedure TMainForm.FixFloatForms;
var
	i: Integer;
begin
	with dxDockingController do
		for i := 0 to Pred(DockControlCount) do
			if DockControls[i] is TdxDockPanel then
				FixFloatForm(TdxDockPanel(DockControls[i]).FloatForm);
end;

procedure TMainForm.LoadLayout(const inFilename: string);
begin
	if FileExists(inFilename) then
	try
		Screen.Cursor := crHourglass;
		//PropStore.LoadFromIniFile(inFilename, PropStore.IniSection);
		dxDockingController.LoadLayoutFromIniFile(inFilename);
		FixFloatForms;
	finally
		Screen.Cursor := crDefault;
	end;
end;

procedure TMainForm.SaveLayout(const inFilename: string);
begin
	dxDockingController.SaveLayoutToIniFile(inFilename);
	//PropStore.SaveToIniFile(inFilename, PropStore.IniSection);
end;

procedure TMainForm.SaveLayoutActionExecute(Sender: TObject);
begin
	if SaveLayoutDialog.Execute then
		SaveLayout(SaveLayoutDialog.FileName);
end;

procedure TMainForm.LoadLayoutActionExecute(Sender: TObject);
begin
	if OpenLayoutDialog.Execute then
		LoadLayout(OpenLayoutDialog.Filename);
end;

function TMainForm.GetActiveDesigner: TDCLiteDesigner;
begin
	if (DocMgr.Current is TPageDocument) then
		Result := TPageDocument(DocMgr.Current).DesignForm.DCLiteDesigner
	else
		Result := nil;
end;

procedure TMainForm.DesignerCopyActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := (ActiveDesigner <> nil)
		and ActiveDesigner.CanCopy;
end;

procedure TMainForm.DesignerCutActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := (ActiveDesigner <> nil)
		and ActiveDesigner.CanCut;
end;

procedure TMainForm.DesignerPasteActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := (ActiveDesigner <> nil)
		and ActiveDesigner.CanPaste;
end;

procedure TMainForm.DesignerDeleteActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := (ActiveDesigner <> nil)
		and ActiveDesigner.CanCopy;
end;

procedure TMainForm.DesignerCopyActionExecute(Sender: TObject);
begin
	ActiveDesigner.Designer.ClipboardCopy;
end;

procedure TMainForm.DesignerCutActionExecute(Sender: TObject);
begin
	ActiveDesigner.Designer.ClipboardCut;
end;

procedure TMainForm.DesignerPasteActionExecute(Sender: TObject);
begin
	ActiveDesigner.Designer.ClipboardPaste;
end;

procedure TMainForm.DesignerDeleteActionExecute(Sender: TObject);
begin
	ActiveDesigner.Designer.DeleteSelectedComponents;
end;

procedure TMainForm.dxDockingManagerLayoutChanged(
	Sender: TdxCustomDockControl);
begin
	if not (csDestroying in ComponentState) then
		if (ActiveDesigner <> nil) then
			if ({PageDocumentForm.}DesignDock.Parent <> nil) then
			begin
				ActiveDesigner.Active := false;
				ActiveDesigner.Active := true;
			end;
end;

procedure TMainForm.CurrentProjectChanged(inSender: TObject);
begin
	if Project <> NilProject then
	begin
		with Project do
		begin
			PublishExplorerForm.RootFolder := PublishFolder;
			SourceExplorerForm.RootFolder := SourceFolder;
			OpenDialog.InitialDir := SourceFolder;
			DocMgr.DefaultPath := SourceFolder;
		end;
		DocumentProjectSettingsChange;
	end;
end;

procedure TMainForm.ProjectOptionsActionExecute(Sender: TObject);
begin
	with TProjectOptionsForm.Create(Self) do
	try
		Project := Self.Project;
		if ShowModal = mrOk then
			CurrentProjectChanged(nil);
	finally
		Free;
	end;
end;

procedure TMainForm.OpenProjectActionExecute(Sender: TObject);
begin
	if DocMgr.CloseAll then
		if OpenProjectDialog.Execute then
			ProjectMgr.OpenProject(OpenProjectDialog.FileName);
end;

procedure TMainForm.ActionRequiringProjectUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := ProjectMgr.ProjectIsOpen;
end;

procedure TMainForm.NewProjectActionExecute(Sender: TObject);
begin
	if ProjectMgr.CloseProject then
		ProjectMgr.CurrentProject := TProject.Create(nil);
end;

procedure TMainForm.SaveProjectActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := ProjectMgr.CurrentProject.Modified;
end;

procedure TMainForm.SaveProjectActionExecute(Sender: TObject);
begin
	ProjectMgr.SaveProject;
end;

procedure TMainForm.SaveProjectAsActionExecute(Sender: TObject);
begin
	ProjectMgr.SaveProjectAs;
end;

procedure TMainForm.ExplorerTreeDblClick(Sender: TObject);
begin
	DocMgr.Open(TVirtualExplorerTree(Sender).SelectedPath);
end;

procedure TMainForm.CloseActionUpdate(Sender: TObject);
begin
	TAction(Sender).Enabled := DocMgr.Current <> DocMgr.NilDocument;
end;

procedure TMainForm.CloseActionExecute(Sender: TObject);
begin
	if DocMgr.Current.CanClose then
		DocMgr.Current.Close;
end;

procedure TMainForm.CloseAllActionExecute(Sender: TObject);
begin
	DocMgr.CloseAll;
end;

procedure TMainForm.ExitActionExecute(Sender: TObject);
begin
	Close;
end;

procedure TMainForm.ShowPhpSource(Sender: TObject;
	inX, inY: Integer);
begin
	ActivateDock(PhpDock);
	PhpEditForm.ShowSource(Sender, inX, inY);
end;

procedure TMainForm.dxDockingManagerCreateSideContainer(
	Sender: TdxCustomDockControl; ASideContainer: TdxSideContainerDockSite);
begin
	ASideContainer.CaptionButtons := [ cbMaximize ];
end;

procedure TMainForm.InspectorActivePropertyChanged(Sender: TObject);
begin
	//InspectorHelp;
end;

procedure TMainForm.InspectorHelp;
var
	handled: Boolean;
begin
	handled := false;
	if GetPageDocument <> nil then
		with InspectorForm.ObjectInspector do
			if CurrentControl <> nil then
				Handled := ComponentHelp(CurrentControl, ActiveProperty);
	if not handled then
		PropertyHelp('TThCssStyle', 'Font');
end;

	function HelpNames(inInstance: TObject; const inProp: string;
		var outName, outProp: string): string;
	var
		s: TStringList;
		o: TObject;
		i: Integer;
	begin
		s := TStringList.Create;
		try
			s.QuoteChar := #0;
			s.Delimiter := '.';
			s.DelimitedText := inProp;
			o := inInstance;
			for i := 0 to s.Count - 2 do
				o := GetObjectProp(o, s[i]);
			if (o <> nil) and (s.Count > 0) then
			begin
				outName := o.ClassName;
				outProp := s[s.Count - 1];
			end
			else begin
				outName := '';
				outProp := '';
			end;
		finally
			s.Free;
		end;
	end;

function TMainForm.ComponentHelp(inComponent: TPersistent;
	const inProperty: string): Boolean;
var
	n, p: string;
begin
	HelpNames(inComponent, inProperty, n, p);
	Result := PropertyHelp(n, p);
end;

function TMainForm.PropertyHelp(const inName, inProperty: string): Boolean;

	function DisplayHelp(inFile: string): Boolean;
	const
		//cExt = '.htm';
		cExt = '.html';
	begin
		inFile := TpLibDocsFolder + inFile + cExt;
		Result := FileExists(inFile);
		if Result then
			HelpForm.Navigate(inFile);
			//HTMLViewer1.LoadFromFile(inFile)
	end;

begin
	if not DisplayHelp(inName + '_' + inProperty) then
		if not DisplayHelp('Common_' + inProperty) then
			if not DisplayHelp(inName) then
				DisplayHelp('Common');
	Result := true;
end;

procedure TMainForm.InstallPackagesActionExecute(Sender: TObject);
begin
	DCShowOnlyPackagesConfig;
end;

procedure TMainForm.DesignPagesChange(Sender: TObject);
begin
	if DesignPages.ActivePage = OutputSheet then
		GetPageController.ShowOutput;
end;

procedure TMainForm.NoCloseQuery(Sender: TdxCustomDockControl;
	var CanClose: Boolean);
begin
	CanClose := false;
end;

procedure TMainForm.NeedPageDocActionUpdate(Sender: TObject);
begin
	ObjectInspectorAction.Enabled := GetPageDocument <> nil;
end;

procedure TMainForm.ObjectInspectorActionExecute(Sender: TObject);
begin
	InspectorDock.Visible := ObjectInspectorAction.Checked;
end;

procedure TMainForm.ComponentListActionExecute(Sender: TObject);
begin
	ComponentListDock.Visible := ComponentListAction.Checked;
end;

procedure TMainForm.ControlTreeActionExecute(Sender: TObject);
begin
	ControlTreeDock.Visible := ControlTreeAction.Checked;
end;

procedure TMainForm.SourceExplorerActionExecute(Sender: TObject);
begin
	SourceExplorerDock.Visible := SourceExplorerAction.Checked;
end;

procedure TMainForm.PublishExplorerActionExecute(Sender: TObject);
begin
	PublishExplorerDock.Visible := PublishExplorerAction.Checked;
end;

procedure TMainForm.DebugViewActionExecute(Sender: TObject);
begin
	DebugDock.Visible := DebugViewAction.Checked;
end;

procedure TMainForm.MadExceptionHandlerException(frozen: Boolean;
	exceptObject: TObject; exceptAddr: Pointer; var bugReport: String;
	var canContinue, handled: Boolean);
begin
	if (exceptObject is EConvertError) then
	begin
		handled := true;
		canContinue := true;
	end;
end;

end.
