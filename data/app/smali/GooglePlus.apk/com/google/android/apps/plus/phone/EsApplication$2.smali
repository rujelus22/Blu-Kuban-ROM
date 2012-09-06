.class Lcom/google/android/apps/plus/phone/EsApplication$2;
.super Ljava/lang/Object;
.source "EsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EsApplication;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsApplication;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EsApplication;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->this$0:Lcom/google/android/apps/plus/phone/EsApplication;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->val$thread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->this$0:Lcom/google/android/apps/plus/phone/EsApplication;

    #getter for: Lcom/google/android/apps/plus/phone/EsApplication;->sSystemUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/EsApplication;->access$000(Lcom/google/android/apps/plus/phone/EsApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->val$thread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/EsApplication$2;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method
