.class public Lcom/sec/android/app/ve/activity/ThemeView;
.super Landroid/app/Activity;
.source "ThemeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;
    }
.end annotation


# static fields
.field private static final APPLY_THEME:I = 0xb

.field private static mThemeView:Lcom/sec/android/app/ve/activity/ThemeView;


# instance fields
.field private filename:Ljava/lang/String;

.field private mSelected_theme:I

.field private save:Z

.field private themeGallery:Landroid/widget/Gallery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/activity/ThemeView;->mThemeView:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeView;->save:Z

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/ThemeView;)Landroid/widget/Gallery;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/activity/ThemeView;
    .registers 1

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/ve/activity/ThemeView;->mThemeView:Lcom/sec/android/app/ve/activity/ThemeView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeView;->save:Z

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 139
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This is inside onConfigurationChanged ThemeView"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeView;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->mSelected_theme:I

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;

    if-nez v2, :cond_31

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ThemeView;->finish()V

    .line 114
    :goto_30
    return-void

    .line 61
    :cond_31
    const v2, 0x7f03003a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->setContentView(I)V

    .line 63
    sput-object p0, Lcom/sec/android/app/ve/activity/ThemeView;->mThemeView:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 65
    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    iput-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;

    new-instance v3, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;

    invoke-direct {v3, p0, p0}, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;-><init>(Lcom/sec/android/app/ve/activity/ThemeView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;

    iget v3, p0, Lcom/sec/android/app/ve/activity/ThemeView;->mSelected_theme:I

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setSelection(I)V

    .line 69
    const v2, 0x7f0b00f7

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 71
    .local v0, ApplyBtn:Landroid/widget/Button;
    new-instance v2, Lcom/sec/android/app/ve/activity/ThemeView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/ThemeView$1;-><init>(Lcom/sec/android/app/ve/activity/ThemeView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v2, 0x7f0b00f8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 103
    .local v1, CancelBtn:Landroid/widget/Button;
    new-instance v2, Lcom/sec/android/app/ve/activity/ThemeView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/ve/activity/ThemeView$2;-><init>(Lcom/sec/android/app/ve/activity/ThemeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_32

    .line 204
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 160
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    const v2, 0x7f08000b

    new-instance v3, Lcom/sec/android/app/ve/activity/ThemeView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ThemeView$3;-><init>(Lcom/sec/android/app/ve/activity/ThemeView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    const v2, 0x7f08000c

    new-instance v3, Lcom/sec/android/app/ve/activity/ThemeView$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/activity/ThemeView$4;-><init>(Lcom/sec/android/app/ve/activity/ThemeView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 158
    :pswitch_data_32
    .packed-switch 0xb
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 125
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 143
    iget-boolean v1, p0, Lcom/sec/android/app/ve/activity/ThemeView;->save:Z

    if-eqz v1, :cond_1d

    .line 144
    const-string v1, "Home key pressed::"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 146
    :try_start_c
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    .line 147
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_21

    .line 152
    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/ve/activity/ThemeView;->save:Z

    .line 153
    return-void

    .line 148
    :catch_21
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "hope to not come here"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ThemeView;->save:Z

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method
