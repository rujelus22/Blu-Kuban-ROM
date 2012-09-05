.class public interface abstract Lcom/android/internal/telephony/DataLinkInterface;
.super Ljava/lang/Object;
.source "DataLinkInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataLinkInterface$LinkState;
    }
.end annotation


# static fields
.field public static final EXIT_OK:I = 0x0

.field public static final EXIT_OPEN_FAILED:I = 0x7


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getLastLinkExitCode()I
.end method

.method public abstract setOnLinkChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPasswordInfo(Landroid/database/Cursor;)V
.end method
