.class public final Lcom/google/android/apps/pos/network/b;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private aclJson:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "display_name"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private items:[Lcom/google/android/apps/pos/model/Plusone;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "profile_image_url"
    .end annotation
.end field

.field private setByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "isSetByViewer"
    .end annotation
.end field

.field private signedUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final b_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->abtk:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public final i()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/pos/network/b;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method
