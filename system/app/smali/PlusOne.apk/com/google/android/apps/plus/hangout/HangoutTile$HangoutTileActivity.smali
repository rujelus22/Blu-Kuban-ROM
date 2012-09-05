.class public interface abstract Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/BlockFragment$Listener;
.implements Lcom/google/android/apps/plus/fragments/BlockPersonDialog$PersonBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HangoutTileActivity"
.end annotation


# virtual methods
.method public abstract getHangoutNotificationIntent()Landroid/content/Intent;
.end method

.method public abstract getParticipantListActivityIntent()Landroid/content/Intent;
.end method

.method public abstract onMeetingMediaStarted()V
.end method

.method public abstract stopHangoutTile()V
.end method
