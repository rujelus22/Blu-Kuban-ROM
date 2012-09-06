.class final Lcom/google/android/ytremote/backend/browserchannel/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ytremote/backend/browserchannel/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/ytremote/backend/browserchannel/a;

.field private final c:Lcom/google/android/ytremote/backend/browserchannel/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/q;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/google/android/ytremote/backend/browserchannel/a;Lcom/google/android/ytremote/backend/browserchannel/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->b:Lcom/google/android/ytremote/backend/browserchannel/a;

    .line 31
    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->c:Lcom/google/android/ytremote/backend/browserchannel/s;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 37
    :try_start_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 38
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_e

    .line 69
    :goto_d
    return-void

    .line 39
    :cond_e
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 41
    iget-object v4, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->b:Lcom/google/android/ytremote/backend/browserchannel/a;

    invoke-virtual {v4, v3}, Lcom/google/android/ytremote/backend/browserchannel/a;->a(I)V

    .line 42
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 47
    if-nez v3, :cond_40

    .line 50
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->b:Lcom/google/android/ytremote/backend/browserchannel/a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    .line 51
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 52
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 38
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 55
    :cond_40
    if-ne v3, v5, :cond_56

    .line 57
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->b:Lcom/google/android/ytremote/backend/browserchannel/a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/ytremote/backend/browserchannel/a;->a(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_4d

    goto :goto_3d

    .line 66
    :catch_4d
    move-exception v0

    .line 67
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/q;->a:Ljava/lang/String;

    const-string v2, "Chunk stream error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 58
    :cond_56
    if-le v3, v5, :cond_3d

    .line 60
    :try_start_58
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->c:Lcom/google/android/ytremote/backend/browserchannel/s;

    if-eqz v3, :cond_3d

    .line 61
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/q;->c:Lcom/google/android/ytremote/backend/browserchannel/s;

    invoke-interface {v3, v2}, Lcom/google/android/ytremote/backend/browserchannel/s;->a(Lorg/json/JSONArray;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_4d

    goto :goto_3d
.end method
