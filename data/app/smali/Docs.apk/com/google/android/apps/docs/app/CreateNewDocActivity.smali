.class public Lcom/google/android/apps/docs/app/CreateNewDocActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "CreateNewDocActivity.java"


# instance fields
.field public a:LRX;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DocFeed"
    .end annotation
.end field

.field public a:LTF;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v1, "accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LkU;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v9

    .line 146
    sget v0, LcY;->creating_document:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 148
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 149
    new-instance v0, Lef;

    const-string v2, "Create new document"

    move-object v1, p0

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lef;-><init>(Lcom/google/android/apps/docs/app/CreateNewDocActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;LkU;LkG;)V

    .line 223
    invoke-virtual {v0}, Ldd;->start()V

    .line 224
    return-void
.end method

.method public a(LkU;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-static {p1, p2}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(LkU;Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;

    move-result-object v0

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->d(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a()Lx;

    move-result-object v1

    const-string v2, "editTitleDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/EditTitleDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->b:Landroid/os/Handler;

    new-instance v1, Lee;

    invoke-direct {v1, p0}, Lee;-><init>(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method f()V
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:LdE;

    const-string v1, "/createNewDoc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;

    move-result-object v0

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->d(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a()Lx;

    move-result-object v1

    const-string v2, "createNewDocumentDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/CreateDocumentDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 108
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    packed-switch p1, :pswitch_data_58

    .line 129
    const-string v0, "CreateNewDocActivity"

    const-string v1, "Unexpected activity request code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_20
    return-void

    .line 112
    :pswitch_21
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4c

    .line 113
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 114
    new-instance v0, LOL;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, v2}, LOL;-><init>(Landroid/content/ContentResolver;)V

    .line 115
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v3, "mime_type"

    invoke-virtual {v0, v1, v3, v2}, LOL;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Ljava/lang/String;

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/shareitem/UploadSharedItemActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_48
    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->finish()V

    goto :goto_20

    .line 122
    :cond_4c
    if-eqz p2, :cond_48

    .line 123
    sget v0, LcY;->gallery_select_error:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_48

    .line 110
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 97
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->f()V

    .line 103
    :goto_1e
    return-void

    .line 100
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->finish()V

    goto :goto_1e
.end method
