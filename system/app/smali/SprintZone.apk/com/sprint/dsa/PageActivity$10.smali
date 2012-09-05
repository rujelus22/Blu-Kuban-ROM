.class Lcom/sprint/dsa/PageActivity$10;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageActivity;->showCallFromOtherPhoneDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity$10;->this$0:Lcom/sprint/dsa/PageActivity;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1058
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1059
    return-void
.end method
