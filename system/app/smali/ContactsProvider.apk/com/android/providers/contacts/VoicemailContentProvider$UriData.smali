.class public Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
.super Ljava/lang/Object;
.source "VoicemailContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/VoicemailContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriData"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSourcePackage:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUriType:Lcom/android/providers/contacts/VoicemailUriType;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "uriType"
    .parameter "id"
    .parameter "sourcePackage"

    .prologue
    .line 172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    .line 174
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    .line 175
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .registers 7
    .parameter "uri"

    .prologue
    .line 219
    const-string v3, "source_package"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, sourcePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->match(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/VoicemailUriType;

    .line 223
    .local v2, uriType:Lcom/android/providers/contacts/VoicemailUriType;
    sget-object v3, Lcom/android/providers/contacts/VoicemailContentProvider$1;->$SwitchMap$com$android$providers$contacts$VoicemailUriType:[I

    invoke-virtual {v2}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_56

    .line 233
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Impossible, all cases are covered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :pswitch_27
    new-instance v3, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_2d
    return-object v3

    :pswitch_2e
    new-instance v4, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2d

    .line 231
    :pswitch_3c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2e
        :pswitch_27
        :pswitch_2e
        :pswitch_3c
    .end packed-switch
.end method

.method private static createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/providers/contacts/util/TypedUriMatcherImpl",
            "<",
            "Lcom/android/providers/contacts/VoicemailUriType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    const-string v1, "com.android.voicemail"

    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;-><init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUriType()Lcom/android/providers/contacts/VoicemailUriType;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method

.method public final getWhereClause()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "_id"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v1, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_28
    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    move-object v0, v1

    goto :goto_15
.end method

.method public final hasId()Z
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final hasSourcePackage()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
