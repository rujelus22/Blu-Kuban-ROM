.class public interface abstract Lcom/google/android/music/download/cache/IDeleteFilter;
.super Ljava/lang/Object;
.source "IDeleteFilter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/cache/IDeleteFilter$Stub;
    }
.end annotation


# virtual methods
.method public abstract shouldFilter(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
