.class public Lcom/dropbox/android/activity/DropboxCreateShortcut;
.super Lcom/dropbox/android/activity/BrowserWithHistoryStack;
.source "panda.py"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private y:Landroid/widget/Button;

.field private z:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/dropbox/android/activity/DropboxCreateShortcut;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.BROWSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 120
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 123
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 127
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/DropboxCreateShortcut;Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    return-void
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 81
    sget-object v0, Lcom/dropbox/android/widget/aa;->b:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->requestWindowFeature(I)Z

    .line 32
    new-instance v0, Lcom/dropbox/android/util/Z;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->a(Landroid/net/Uri;)V

    .line 34
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/BrowserWithHistoryStack;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v1, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FULL_SCREEN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->finish()V

    .line 77
    :goto_3b
    return-void

    .line 46
    :cond_3c
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->z:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->z:Landroid/widget/Button;

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 48
    new-instance v0, Lcom/dropbox/android/activity/B;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/B;-><init>(Lcom/dropbox/android/activity/DropboxCreateShortcut;)V

    .line 54
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->z:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->y:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->y:Landroid/widget/Button;

    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 58
    new-instance v0, Lcom/dropbox/android/activity/C;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/C;-><init>(Lcom/dropbox/android/activity/DropboxCreateShortcut;)V

    .line 72
    iget-object v1, p0, Lcom/dropbox/android/activity/DropboxCreateShortcut;->y:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->c:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020071

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->b:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f09007a

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    sget-object v0, Lcom/dropbox/android/activity/delegate/I;->a:Lcom/dropbox/android/activity/delegate/I;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/delegate/I;->a()I

    move-result v0

    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/DropboxCreateShortcut;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected final q()I
    .registers 2

    .prologue
    .line 86
    const v0, 0x7f03000d

    return v0
.end method
