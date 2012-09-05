.class Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;
.super Ljava/lang/Object;
.source "VlingoLatinIM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/keyboard/VlingoLatinIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 2
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 643
    invoke-static {}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1700()Lcom/vlingo/client/keyboard/KbdRecoDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$CancelListener;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressView:Lcom/vlingo/client/asr/ProgressView;
    invoke-static {v1}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1600(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Lcom/vlingo/client/asr/ProgressView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/keyboard/KbdRecoDialog;->deactivated(Lcom/vlingo/client/asr/ProgressView;)V

    .line 644
    return-void
.end method
