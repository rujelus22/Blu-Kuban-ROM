.class public Lcom/google/android/apps/books/api/ApiaryVolume$ReadingPosition;
.super Ljava/lang/Object;
.source "ApiaryVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/ApiaryVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadingPosition"
.end annotation


# instance fields
.field public textPosition:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "gbTextPosition"
    .end annotation
.end field

.field public updated:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
