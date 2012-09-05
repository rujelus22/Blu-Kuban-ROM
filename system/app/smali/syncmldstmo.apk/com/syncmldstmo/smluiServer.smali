.class public Lcom/syncmldstmo/smluiServer;
.super Landroid/app/Activity;
.source "smluiServer.java"


# static fields
.field public static edProfileName:Landroid/widget/EditText;

.field public static edSyncServer:Landroid/widget/EditText;

.field public static edSyncServerID:Landroid/widget/EditText;

.field public static edSyncServerPW:Landroid/widget/EditText;


# instance fields
.field private profile:Lcom/syncmldstmo/database/smlDbProfileInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/smluiServer;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiServer;->setContentView(I)V

    .line 26
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v0

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smluiServer;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 29
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiServer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/syncmldstmo/smluiServer;->edProfileName:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiServer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServer:Landroid/widget/EditText;

    .line 31
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiServer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServerID:Landroid/widget/EditText;

    .line 32
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/smluiServer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServerPW:Landroid/widget/EditText;

    .line 34
    sget-object v0, Lcom/syncmldstmo/smluiServer;->edProfileName:Landroid/widget/EditText;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServer:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/syncmldstmo/smluiServer;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServerID:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/syncmldstmo/smluiServer;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-object v0, Lcom/syncmldstmo/smluiServer;->edSyncServerPW:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/syncmldstmo/smluiServer;->profile:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method
