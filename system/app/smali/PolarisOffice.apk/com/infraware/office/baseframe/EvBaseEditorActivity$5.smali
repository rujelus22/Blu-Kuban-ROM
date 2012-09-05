.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 3101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3104
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->m_oMenuAdapter:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;

    .line 3105
    .local v0, menu:Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;
    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_bEnable:Z

    if-nez v1, :cond_15

    .line 3147
    :cond_14
    :goto_14
    return-void

    .line 3108
    :cond_15
    iget v1, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$IconMenu;->m_nMenuId:I

    packed-switch v1, :pswitch_data_90

    :pswitch_1a
    goto :goto_14

    .line 3111
    :pswitch_1b
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSave()V

    goto :goto_14

    .line 3114
    :pswitch_21
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnSaveAs()V

    goto :goto_14

    .line 3117
    :pswitch_27
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnGotoDialog()V

    goto :goto_14

    .line 3120
    :pswitch_2d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onZoomMenu(Z)V

    goto :goto_14

    .line 3123
    :pswitch_33
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnReflowText()V

    goto :goto_14

    .line 3126
    :pswitch_39
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->bContinuousMode:I

    if-nez v1, :cond_4d

    .line 3127
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v3}, Lcom/infraware/office/evengine/EvInterface;->ISetScreenMode(I)V

    goto :goto_14

    .line 3129
    :cond_4d
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetScreenMode(I)V

    goto :goto_14

    .line 3132
    :pswitch_55
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFindDialog()V

    .line 3134
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->InitFindBar()V

    .line 3135
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->FindBarShow(Z)V

    .line 3136
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    goto :goto_14

    .line 3139
    :pswitch_70
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnFindDialog()V

    .line 3141
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->InitFindBar()V

    .line 3142
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->initReplaceBar()V

    .line 3143
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ReplaceBarShow(Z)V

    .line 3144
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$5;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnDisabledToolbar(Ljava/lang/Boolean;)V

    goto :goto_14

    .line 3108
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_21
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_55
        :pswitch_70
    .end packed-switch
.end method
