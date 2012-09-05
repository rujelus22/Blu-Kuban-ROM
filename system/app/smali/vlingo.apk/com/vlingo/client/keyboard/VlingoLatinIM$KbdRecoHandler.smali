.class Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;
.super Ljava/lang/Object;
.source "VlingoLatinIM.java"

# interfaces
.implements Lcom/vlingo/client/android/core/asr/ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/keyboard/VlingoLatinIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KbdRecoHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V
    .registers 2
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;Lcom/vlingo/client/keyboard/VlingoLatinIM$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;-><init>(Lcom/vlingo/client/keyboard/VlingoLatinIM;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/vlingo/client/keyboard/VlingoLatinIM$KbdRecoHandler;->this$0:Lcom/vlingo/client/keyboard/VlingoLatinIM;

    #getter for: Lcom/vlingo/client/keyboard/VlingoLatinIM;->m_ProgressDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/vlingo/client/keyboard/VlingoLatinIM;->access$1500(Lcom/vlingo/client/keyboard/VlingoLatinIM;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 634
    return-void
.end method

.method public fetch()V
    .registers 1

    .prologue
    .line 637
    return-void
.end method
