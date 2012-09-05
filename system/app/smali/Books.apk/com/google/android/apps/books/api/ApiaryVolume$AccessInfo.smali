.class public Lcom/google/android/apps/books/api/ApiaryVolume$AccessInfo;
.super Ljava/lang/Object;
.source "ApiaryVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/api/ApiaryVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessInfo"
.end annotation


# instance fields
.field public accessViewStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public downloadAccess:Lcom/google/android/apps/books/api/DownloadAccessResponse;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public publicDomain:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public textToSpeechPermission:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public viewability:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
