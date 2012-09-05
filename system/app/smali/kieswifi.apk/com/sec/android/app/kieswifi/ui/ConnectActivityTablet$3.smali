.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$3;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$3;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->dismissDialog(I)V

    .line 451
    return-void
.end method
