.class public Lcom/estrongs/android/pop/app/FavoriteFolderActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.ICON"

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, -0x1

    sget-object v1, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->a:Landroid/net/Uri;

    const v2, 0x7f09015a

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020047

    invoke-static {p0, v1, v2, v3}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->setResult(ILandroid/content/Intent;)V

    :goto_27
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->finish()V

    return-void

    :cond_2b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/FavoriteFolderActivity;->setResult(I)V

    goto :goto_27
.end method
