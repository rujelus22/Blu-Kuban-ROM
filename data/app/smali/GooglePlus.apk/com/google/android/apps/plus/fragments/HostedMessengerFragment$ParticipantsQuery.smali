.class public interface abstract Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ParticipantsQuery;
.super Ljava/lang/Object;
.source "HostedMessengerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedMessengerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParticipantsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "participant_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "full_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "first_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedMessengerFragment$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
