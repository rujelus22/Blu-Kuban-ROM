.class public Lcom/google/android/apps/books/api/ApiaryVolume$UserInfo;
.super Ljava/lang/Object;
.source "ApiaryVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/ApiaryVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field public readingPosition:Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
