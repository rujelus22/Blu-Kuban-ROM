.class public final Ldbxyzptlk/h/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ldbxyzptlk/h/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 49
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    .line 58
    invoke-static {}, Lcom/dropbox/android/util/h;->C()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 59
    invoke-static {}, Lcom/dropbox/android/util/h;->af()V

    .line 60
    iget-object v0, p0, Ldbxyzptlk/h/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method
