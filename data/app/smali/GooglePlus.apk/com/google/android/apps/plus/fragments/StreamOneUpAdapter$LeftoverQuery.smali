.class public interface abstract Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$LeftoverQuery;
.super Ljava/lang/Object;
.source "StreamOneUpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LeftoverQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2147483645 AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3 AS row_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter$LeftoverQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
