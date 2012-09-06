.class public Lcom/google/android/apps/reader/fragment/HelpMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "HelpMenuFragment.java"


# static fields
.field private static final HELP_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "http://www.google.com/support/mobile/bin/topic.py?topic=14266"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->HELP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private showHelp()V
    .registers 4

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->HELP_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->setHasOptionsMenu(Z)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 46
    const v0, 0x7f100006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 53
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/apps/reader/fragment/HelpMenuFragment;->showHelp()V

    .line 54
    const/4 v0, 0x1

    goto :goto_b

    .line 51
    nop

    :pswitch_data_12
    .packed-switch 0x7f0b007a
        :pswitch_c
    .end packed-switch
.end method
