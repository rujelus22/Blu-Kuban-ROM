.class public interface abstract Lcom/google/android/apps/plus/fragments/HostedEventFragment$DetailsQuery;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetailsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 228
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "polling_token"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "resume_token"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "activity_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DetailsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method