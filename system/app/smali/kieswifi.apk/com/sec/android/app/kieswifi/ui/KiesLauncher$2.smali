.class Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;
.super Ljava/lang/Object;
.source "KiesLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->dismissDialog(I)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$2;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finish()V

    .line 92
    return-void
.end method
