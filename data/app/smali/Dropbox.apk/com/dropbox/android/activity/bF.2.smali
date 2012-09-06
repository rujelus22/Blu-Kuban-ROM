.class final Lcom/dropbox/android/activity/bF;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/bS;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Landroid/widget/RadioButton;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/dropbox/android/activity/bF;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 343
    const-string v0, "MOBILE_DATA_CHECKED"

    iget-object v1, p0, Lcom/dropbox/android/activity/bF;->a:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    return-void
.end method
