.class public interface abstract Lcom/google/android/apps/googlevoice/CallConduit;
.super Ljava/lang/Object;
.source "CallConduit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/CallConduit$Call;
    }
.end annotation


# virtual methods
.method public abstract canPlaceCall(Ljava/lang/String;)Z
.end method

.method public abstract prepareCall(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;)Lcom/google/android/apps/googlevoice/CallConduit$Call;
.end method
