object TurboDocumentHostForm: TTurboDocumentHostForm
  Left = 530
  Top = 148
  Width = 375
  Height = 407
  Caption = 'TurboDocumentHostForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object aqDockingSite1: TaqDockingSite
    Left = 0
    Top = 0
    Width = 367
    Height = 373
    Align = alClient
    DockingManager = aqDockingManager
    Key = '{410DA0AC-CBB2-4D4E-8144-A153BC43B786}'
  end
  object aqDockingManager: TaqDockingManager
    AutoDragKey = [dssCtrl, dssLeft]
    CaptionButtons = [dbiUndock, dbiMaximizeRestore]
    DockingStyleClassName = 'VS2005'
    DockingStyle.TabOrientation = dtoBottom
    DockingStyle.ActiveDockZone.ActiveTransparency = 255
    DockingStyle.ActiveDockZone.FadeInDelay = 200
    DockingStyle.ActiveDockZone.FadeOutDelay = 250
    DockingStyle.ActiveDockZone.Transparency = 128
    DockingStyle.DockingFrame.Brush.Color = clHighlight
    DockingStyle.DockZone.ActiveTransparency = 128
    DockingStyle.DockZone.FadeInDelay = 50
    DockingStyle.DockZone.FadeOutDelay = 1000
    DockingStyle.DockZone.Transparency = 0
    FloatingFormType = fftNormal
    ShowImages = [ctCaption, ctTab]
    StyleManager = aqStyleManager1
    Left = 48
    Top = 48
    Style = TurboDocumentHostForm.aqStyleManager1.aqThemedUIStyle1
    object DesignDock: TaqDockingControl
      Width = 367
      Height = 331
      Caption = 'Design'
      ImageIndex = -1
      MinWidth = 0
      MinHeight = 0
      ShowCaption = bvDefault
      ShowImage = bvDefault
      Visible = True
      Key = '{B37464AF-1579-4DB8-8D9B-3BFE9B6C8D41}'
      DesignClientHeight = 331
      DesignClientWidth = 367
    end
    object JavaScriptDock: TaqDockingControl
      Width = 367
      Height = 331
      Caption = 'JavaScript'
      ImageIndex = -1
      MinWidth = 0
      MinHeight = 0
      ShowCaption = bvDefault
      ShowImage = bvDefault
      Visible = True
      Key = '{C82F2B9E-F740-4BAC-B588-870E8F506A14}'
      DesignClientHeight = 331
      DesignClientWidth = 367
    end
    object PhpDock: TaqDockingControl
      Width = 367
      Height = 331
      Caption = 'PHP'
      ImageIndex = -1
      MinWidth = 0
      MinHeight = 0
      ShowCaption = bvDefault
      ShowImage = bvDefault
      Visible = True
      Key = '{D8BD6961-F186-4960-BB09-2475F7EC4D5A}'
      DesignClientHeight = 331
      DesignClientWidth = 367
    end
    object HtmlDock: TaqDockingControl
      Width = 367
      Height = 331
      Caption = 'HTML'
      ImageIndex = -1
      MinWidth = 0
      MinHeight = 0
      ShowCaption = bvDefault
      ShowImage = bvDefault
      Visible = True
      Key = '{66CC114C-FBB6-46A5-ADE2-2408C1FA2AAE}'
      DesignClientHeight = 331
      DesignClientWidth = 367
    end
    object PreviewDock: TaqDockingControl
      Width = 367
      Height = 331
      Caption = 'Preview'
      ImageIndex = -1
      MinWidth = 0
      MinHeight = 0
      ShowCaption = bvDefault
      ShowImage = bvDefault
      Visible = True
      Key = '{B4702A0B-7CDD-4609-8C13-52AF45D9CE62}'
      DesignClientHeight = 331
      DesignClientWidth = 367
    end
  end
  object aqStyleManager1: TaqStyleManager
    Left = 48
    Top = 99
    object aqDefaultUIStyle1: TaqDefaultUIStyle
      ActiveCaptionColor.Bands = 256
      ActiveCaptionColor.EndColor = clWindow
      ActiveCaptionColor.FillType = gtSolid
      ActiveCaptionColor.StartColor = clBtnFace
      ActiveCaptionFont.Charset = DEFAULT_CHARSET
      ActiveCaptionFont.Color = clWindowText
      ActiveCaptionFont.Height = -11
      ActiveCaptionFont.Name = 'MS Sans Serif'
      ActiveCaptionFont.Style = []
      ActiveHiddenTabColor.Bands = 256
      ActiveHiddenTabColor.EndColor = clWindow
      ActiveHiddenTabColor.FillType = gtSolid
      ActiveHiddenTabColor.StartColor = clBtnFace
      ActiveHiddenTabFont.Charset = DEFAULT_CHARSET
      ActiveHiddenTabFont.Color = clWindowText
      ActiveHiddenTabFont.Height = -11
      ActiveHiddenTabFont.Name = 'MS Shell Dlg 2'
      ActiveHiddenTabFont.Style = []
      ActiveTabColor.Bands = 256
      ActiveTabColor.EndColor = clWindow
      ActiveTabColor.FillType = gtSolid
      ActiveTabColor.StartColor = clBtnFace
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      CaptionButtonSize = 14
      CaptionColor.Bands = 256
      CaptionColor.EndColor = clWindow
      CaptionColor.FillType = gtSolid
      CaptionColor.StartColor = clBtnFace
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      HiddenTabColor.Bands = 256
      HiddenTabColor.EndColor = clWindow
      HiddenTabColor.FillType = gtSolid
      HiddenTabColor.StartColor = clBtnFace
      HiddenTabFont.Charset = DEFAULT_CHARSET
      HiddenTabFont.Color = clBtnShadow
      HiddenTabFont.Height = -11
      HiddenTabFont.Name = 'MS Shell Dlg 2'
      HiddenTabFont.Style = []
      HideZoneColor.Bands = 256
      HideZoneColor.EndColor = clWindow
      HideZoneColor.FillType = gtSolid
      HideZoneColor.StartColor = clWindow
      SplitterColor = clBtnFace
      SplitterHeight = 4
      SplitterWidth = 4
      TabColor.Bands = 256
      TabColor.EndColor = clWindow
      TabColor.FillType = gtSolid
      TabColor.StartColor = clBtnHighlight
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabIndent = 3
      TabPaneColor.Bands = 256
      TabPaneColor.EndColor = clWindow
      TabPaneColor.FillType = gtSolid
      TabPaneColor.StartColor = clBtnHighlight
      Predefined = True
    end
    object aqStandardUIStyle1: TaqStandardUIStyle
      ActiveCaptionColor.Bands = 256
      ActiveCaptionColor.EndColor = clWindow
      ActiveCaptionColor.FillType = gtSolid
      ActiveCaptionColor.StartColor = clBtnFace
      ActiveCaptionFont.Charset = DEFAULT_CHARSET
      ActiveCaptionFont.Color = clWindowText
      ActiveCaptionFont.Height = -11
      ActiveCaptionFont.Name = 'MS Sans Serif'
      ActiveCaptionFont.Style = []
      ActiveHiddenTabColor.Bands = 256
      ActiveHiddenTabColor.EndColor = clWindow
      ActiveHiddenTabColor.FillType = gtSolid
      ActiveHiddenTabColor.StartColor = clBtnFace
      ActiveHiddenTabFont.Charset = DEFAULT_CHARSET
      ActiveHiddenTabFont.Color = clWindowText
      ActiveHiddenTabFont.Height = -11
      ActiveHiddenTabFont.Name = 'MS Shell Dlg 2'
      ActiveHiddenTabFont.Style = []
      ActiveTabColor.Bands = 256
      ActiveTabColor.EndColor = clWindow
      ActiveTabColor.FillType = gtSolid
      ActiveTabColor.StartColor = clBtnFace
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      CaptionButtonSize = 14
      CaptionColor.Bands = 256
      CaptionColor.EndColor = clWindow
      CaptionColor.FillType = gtSolid
      CaptionColor.StartColor = clBtnFace
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      HiddenTabColor.Bands = 256
      HiddenTabColor.EndColor = clWindow
      HiddenTabColor.FillType = gtSolid
      HiddenTabColor.StartColor = clBtnFace
      HiddenTabFont.Charset = DEFAULT_CHARSET
      HiddenTabFont.Color = clBtnShadow
      HiddenTabFont.Height = -11
      HiddenTabFont.Name = 'MS Shell Dlg 2'
      HiddenTabFont.Style = []
      HideZoneColor.Bands = 256
      HideZoneColor.EndColor = clWindow
      HideZoneColor.FillType = gtSolid
      HideZoneColor.StartColor = clWindow
      SplitterColor = clBtnFace
      SplitterHeight = 4
      SplitterWidth = 4
      TabColor.Bands = 256
      TabColor.EndColor = clWindow
      TabColor.FillType = gtSolid
      TabColor.StartColor = clBtnFace
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabIndent = 3
      TabPaneColor.Bands = 256
      TabPaneColor.EndColor = clWindow
      TabPaneColor.FillType = gtSolid
      TabPaneColor.StartColor = clBtnFace
      Predefined = True
    end
    object aqEnhancedUIStyle1: TaqEnhancedUIStyle
      ActiveCaptionColor.Bands = 256
      ActiveCaptionColor.EndColor = clWindow
      ActiveCaptionColor.FillType = gtSolid
      ActiveCaptionColor.StartColor = clBtnFace
      ActiveCaptionFont.Charset = DEFAULT_CHARSET
      ActiveCaptionFont.Color = clWindowText
      ActiveCaptionFont.Height = -11
      ActiveCaptionFont.Name = 'MS Sans Serif'
      ActiveCaptionFont.Style = []
      ActiveHiddenTabColor.Bands = 256
      ActiveHiddenTabColor.EndColor = clWindow
      ActiveHiddenTabColor.FillType = gtSolid
      ActiveHiddenTabColor.StartColor = clBtnFace
      ActiveHiddenTabFont.Charset = DEFAULT_CHARSET
      ActiveHiddenTabFont.Color = clWindowText
      ActiveHiddenTabFont.Height = -11
      ActiveHiddenTabFont.Name = 'MS Shell Dlg 2'
      ActiveHiddenTabFont.Style = []
      ActiveTabColor.Bands = 256
      ActiveTabColor.EndColor = clWindow
      ActiveTabColor.FillType = gtSolid
      ActiveTabColor.StartColor = clBtnFace
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      CaptionButtonSize = 14
      CaptionColor.Bands = 256
      CaptionColor.EndColor = clWindow
      CaptionColor.FillType = gtSolid
      CaptionColor.StartColor = clBtnFace
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      HiddenTabColor.Bands = 256
      HiddenTabColor.EndColor = clWindow
      HiddenTabColor.FillType = gtSolid
      HiddenTabColor.StartColor = clBtnFace
      HiddenTabFont.Charset = DEFAULT_CHARSET
      HiddenTabFont.Color = clBtnShadow
      HiddenTabFont.Height = -11
      HiddenTabFont.Name = 'MS Shell Dlg 2'
      HiddenTabFont.Style = []
      HideZoneColor.Bands = 256
      HideZoneColor.EndColor = clWindow
      HideZoneColor.FillType = gtSolid
      HideZoneColor.StartColor = clWindow
      SplitterColor = clBtnFace
      SplitterHeight = 4
      SplitterWidth = 4
      TabColor.Bands = 256
      TabColor.EndColor = clWindow
      TabColor.FillType = gtSolid
      TabColor.StartColor = clBtnFace
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabIndent = 3
      TabPaneColor.Bands = 256
      TabPaneColor.EndColor = clWindow
      TabPaneColor.FillType = gtSolid
      TabPaneColor.StartColor = clBtnFace
      Predefined = True
    end
    object aqFlatUIStyle1: TaqFlatUIStyle
      ActiveCaptionColor.Bands = 256
      ActiveCaptionColor.EndColor = clWindow
      ActiveCaptionColor.FillType = gtSolid
      ActiveCaptionColor.StartColor = clActiveCaption
      ActiveCaptionFont.Charset = DEFAULT_CHARSET
      ActiveCaptionFont.Color = clCaptionText
      ActiveCaptionFont.Height = -11
      ActiveCaptionFont.Name = 'MS Sans Serif'
      ActiveCaptionFont.Style = []
      ActiveHiddenTabColor.Bands = 256
      ActiveHiddenTabColor.EndColor = clWindow
      ActiveHiddenTabColor.FillType = gtSolid
      ActiveHiddenTabColor.StartColor = clBtnFace
      ActiveHiddenTabFont.Charset = DEFAULT_CHARSET
      ActiveHiddenTabFont.Color = clWindowText
      ActiveHiddenTabFont.Height = -11
      ActiveHiddenTabFont.Name = 'MS Shell Dlg 2'
      ActiveHiddenTabFont.Style = []
      ActiveTabColor.Bands = 256
      ActiveTabColor.EndColor = clWindow
      ActiveTabColor.FillType = gtSolid
      ActiveTabColor.StartColor = clBtnFace
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      CaptionButtonSize = 14
      CaptionColor.Bands = 256
      CaptionColor.EndColor = clWindow
      CaptionColor.FillType = gtSolid
      CaptionColor.StartColor = clBtnFace
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      HiddenTabColor.Bands = 256
      HiddenTabColor.EndColor = clWindow
      HiddenTabColor.FillType = gtSolid
      HiddenTabColor.StartColor = clBtnFace
      HiddenTabFont.Charset = DEFAULT_CHARSET
      HiddenTabFont.Color = clBtnShadow
      HiddenTabFont.Height = -11
      HiddenTabFont.Name = 'MS Shell Dlg 2'
      HiddenTabFont.Style = []
      HideZoneColor.Bands = 256
      HideZoneColor.EndColor = clWindow
      HideZoneColor.FillType = gtSolid
      HideZoneColor.StartColor = clWindow
      SplitterColor = clBtnFace
      SplitterHeight = 4
      SplitterWidth = 4
      TabColor.Bands = 256
      TabColor.EndColor = clWindow
      TabColor.FillType = gtSolid
      TabColor.StartColor = 15465727
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabIndent = 3
      TabPaneColor.Bands = 256
      TabPaneColor.EndColor = clWindow
      TabPaneColor.FillType = gtSolid
      TabPaneColor.StartColor = 15465727
      Predefined = True
    end
    object aqThemedUIStyle1: TaqThemedUIStyle
      ActiveCaptionFont.Charset = DEFAULT_CHARSET
      ActiveCaptionFont.Color = clWindowText
      ActiveCaptionFont.Height = -11
      ActiveCaptionFont.Name = 'MS Sans Serif'
      ActiveCaptionFont.Style = []
      ActiveHiddenTabFont.Charset = DEFAULT_CHARSET
      ActiveHiddenTabFont.Color = clWindowText
      ActiveHiddenTabFont.Height = -11
      ActiveHiddenTabFont.Name = 'MS Shell Dlg 2'
      ActiveHiddenTabFont.Style = []
      CaptionButtonSize = 14
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      HiddenTabFont.Charset = DEFAULT_CHARSET
      HiddenTabFont.Color = clBtnShadow
      HiddenTabFont.Height = -11
      HiddenTabFont.Name = 'MS Shell Dlg 2'
      HiddenTabFont.Style = []
      SplitterHeight = 4
      SplitterWidth = 4
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      ActiveTabFont.Charset = DEFAULT_CHARSET
      ActiveTabFont.Color = clWindowText
      ActiveTabFont.Height = -11
      ActiveTabFont.Name = 'MS Sans Serif'
      ActiveTabFont.Style = []
      TabIndent = 1
      Predefined = True
      object TaqCaptionButtonWidgets
        HideButton.PartIndex = bwCloseButton
        UndockButton.PartIndex = bwDropDown
        AutoHideButton.PartIndex = bwPin
        UndoAutoHideButton.PartIndex = bwRotatedPin
        MaximizeButton.PartIndex = bwMaxButton
        RestoreButton.PartIndex = bwRestoreButton
        HelpButton.PartIndex = bwHelpButton
        MenuButton.PartIndex = bwDropDown
        CustomButton.PartIndex = bwNone
      end
    end
  end
  object ChangeTimer: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = ChangeTimerTimer
    Left = 44
    Top = 152
  end
end