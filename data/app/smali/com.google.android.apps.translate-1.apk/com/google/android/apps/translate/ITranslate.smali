.class public interface abstract Lcom/google/android/apps/translate/ITranslate;
.super Ljava/lang/Object;
.source "ITranslate.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/ITranslate$Stub;
    }
.end annotation


# virtual methods
.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
