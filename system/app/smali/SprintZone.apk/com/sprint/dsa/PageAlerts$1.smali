.class Lcom/sprint/dsa/PageAlerts$1;
.super Ljava/lang/Object;
.source "PageAlerts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/PageAlerts;->confirmDelete(IILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/PageAlerts;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/PageAlerts;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/PageAlerts$1;->this$0:Lcom/sprint/dsa/PageAlerts;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 276
    return-void
.end method
