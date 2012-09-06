.class final enum LeG;
.super LeD;
.source "DocumentOpenMethod.java"


# direct methods
.method constructor <init>(Ljava/lang/String;ILQM;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LeD;-><init>(Ljava/lang/String;ILQM;LeE;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "docListTitle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    return-object v0
.end method
