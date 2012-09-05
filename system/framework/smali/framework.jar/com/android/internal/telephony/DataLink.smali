.class public abstract Lcom/android/internal/telephony/DataLink;
.super Landroid/os/Handler;
.source "DataLink.java"

# interfaces
.implements Lcom/android/internal/telephony/DataLinkInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataLink$1;,
        Lcom/android/internal/telephony/DataLink$PppState;
    }
.end annotation


# static fields
.field public static final PPP_AUTH_CHAP:I = 0x2

.field public static final PPP_AUTH_EAP:I = 0x3

.field public static final PPP_AUTH_PAP:I = 0x1

.field public static final PPP_NO_AUTH:I


# instance fields
.field protected dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

.field protected mLinkChangeRegistrant:Landroid/os/Registrant;

.field protected state:Lcom/android/internal/telephony/DataLink$PppState;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .registers 3
    .parameter "dc"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    sget-object v0, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    iput-object v0, p0, Lcom/android/internal/telephony/DataLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 71
    return-void
.end method


# virtual methods
.method public setOnLinkChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 74
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    .line 75
    return-void
.end method
