.class public Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;
.super Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;
.source "OtherSettingIndicatorButton.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

.field private mPrefKeys:[Ljava/lang/String;

.field private mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/moblynx/cameraics/PreferenceGroup;[Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "preferenceGroup"
    .parameter "prefKeys"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/moblynx/cameraics/ui/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "OtherSettingIndicatorButton"

    iput-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->TAG:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p2}, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->setImageResource(I)V

    .line 40
    iput-object p3, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    .line 41
    iput-object p4, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected initializePopup()V
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 55
    const-string v4, "layout_inflater"

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0d0041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 59
    .local v2, root:Landroid/view/ViewGroup;
    const v3, 0x7f04000f

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;

    .line 60
    .local v1, popup:Lcom/moblynx/cameraics/ui/OtherSettingsPopup;
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    invoke-virtual {v1, v3}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->setSettingChangedListener(Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;)V

    .line 61
    iget-object v3, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPreferenceGroup:Lcom/moblynx/cameraics/PreferenceGroup;

    iget-object v4, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPrefKeys:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->initialize(Lcom/moblynx/cameraics/PreferenceGroup;[Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    iput-object v1, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPopup:Lcom/moblynx/cameraics/ui/AbstractSettingPopup;

    .line 64
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPopup:Lcom/moblynx/cameraics/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->initializePopup()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mPopup:Lcom/moblynx/cameraics/ui/AbstractSettingPopup;

    check-cast v0, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;

    invoke-virtual {v0, p1}, Lcom/moblynx/cameraics/ui/OtherSettingsPopup;->overrideSettings([Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public setSettingChangedListener(Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/moblynx/cameraics/ui/OtherSettingIndicatorButton;->mListener:Lcom/moblynx/cameraics/ui/OtherSettingsPopup$Listener;

    .line 34
    return-void
.end method
