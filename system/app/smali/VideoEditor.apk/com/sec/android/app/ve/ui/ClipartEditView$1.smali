.class Lcom/sec/android/app/ve/ui/ClipartEditView$1;
.super Ljava/lang/Object;
.source "ClipartEditView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/ClipartEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/ui/ClipartEditView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/ui/ClipartEditView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/ClipartEditView$1;->this$0:Lcom/sec/android/app/ve/ui/ClipartEditView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ClipartEditView$1;->this$0:Lcom/sec/android/app/ve/ui/ClipartEditView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/ClipartEditView;->dismiss()V

    .line 46
    return-void
.end method
