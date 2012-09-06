.class public Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
.super Ljava/lang/Object;
.source "VoicemailImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Ljava/lang/Boolean;

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
    .registers 12

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderDuration:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderSourceData:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderHasContent:Ljava/lang/Boolean;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$1;)V

    return-object v0
.end method

.method public setDuration(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 4
    .parameter "duration"

    .prologue
    .line 111
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderDuration:Ljava/lang/Long;

    .line 112
    return-object p0
.end method

.method public setHasContent(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 3
    .parameter "hasContent"

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderHasContent:Ljava/lang/Boolean;

    .line 137
    return-object p0
.end method

.method public setId(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 4
    .parameter "id"

    .prologue
    .line 106
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderId:Ljava/lang/Long;

    .line 107
    return-object p0
.end method

.method public setIsRead(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 3
    .parameter "isRead"

    .prologue
    .line 131
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    .line 132
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 2
    .parameter "number"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderNumber:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 2
    .parameter "sourceData"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderSourceData:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 2
    .parameter "sourcePackage"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 4
    .parameter "timestamp"

    .prologue
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    .line 102
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->mBuilderUri:Landroid/net/Uri;

    .line 127
    return-object p0
.end method
