.class final Lcom/dropbox/android/activity/bE;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/bR;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/dropbox/android/activity/bE;->a:Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/dropbox/android/activity/bE;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dropbox/android/activity/bE;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dropbox/android/activity/bE;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
