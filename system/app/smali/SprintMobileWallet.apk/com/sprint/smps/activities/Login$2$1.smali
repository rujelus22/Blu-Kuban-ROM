.class Lcom/sprint/smps/activities/Login$2$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/Login$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$2$1;->this$1:Lcom/sprint/smps/activities/Login$2;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 289
    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$0()Lcom/sprint/smps/activities/Login;

    move-result-object v0

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method
