.class Lcom/android/browser/Reader$1$1;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Reader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Reader$1;


# direct methods
.method constructor <init>(Lcom/android/browser/Reader$1;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/browser/Reader$1$1;->this$1:Lcom/android/browser/Reader$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/browser/Reader$1$1;->this$1:Lcom/android/browser/Reader$1;

    iget-object v0, v0, Lcom/android/browser/Reader$1;->this$0:Lcom/android/browser/Reader;

    invoke-virtual {v0}, Lcom/android/browser/Reader;->createReader()V

    .line 125
    return-void
.end method
