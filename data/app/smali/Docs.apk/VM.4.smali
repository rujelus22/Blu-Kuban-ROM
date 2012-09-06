.class LVM;
.super Lap;
.source "PartialDownloadedFileStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lap",
        "<",
        "Ljava/lang/String;",
        "LVK;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LVL;


# direct methods
.method constructor <init>(LVL;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LVM;->a:LVL;

    invoke-direct {p0, p2}, Lap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    check-cast p2, Ljava/lang/String;

    check-cast p3, LVK;

    check-cast p4, LVK;

    invoke-virtual {p0, p1, p2, p3, p4}, LVM;->a(ZLjava/lang/String;LVK;LVK;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;LVK;LVK;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    if-eqz p1, :cond_5

    .line 141
    invoke-static {p3}, Lalz;->a(Ljava/io/Closeable;)V

    .line 143
    :cond_5
    return-void
.end method
