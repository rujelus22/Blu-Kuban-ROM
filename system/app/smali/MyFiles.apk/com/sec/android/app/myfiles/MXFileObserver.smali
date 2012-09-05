.class public Lcom/sec/android/app/myfiles/MXFileObserver;
.super Landroid/os/FileObserver;
.source "MXFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;
    }
.end annotation


# instance fields
.field private operation:Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;)V
    .registers 3
    .parameter "path"
    .parameter "operation"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/sec/android/app/myfiles/MXFileObserver;->operation:Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;

    .line 25
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 31
    const/16 v0, 0x80

    if-eq p1, v0, :cond_c

    const/16 v0, 0x40

    if-eq p1, v0, :cond_c

    const/16 v0, 0x200

    if-ne p1, v0, :cond_11

    .line 35
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MXFileObserver;->operation:Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;->onFileChanged()V

    .line 39
    :cond_11
    return-void
.end method
