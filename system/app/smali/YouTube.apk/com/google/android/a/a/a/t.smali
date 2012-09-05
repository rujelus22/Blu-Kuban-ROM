.class final Lcom/google/android/a/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/a/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lorg/json/JSONObject;


# instance fields
.field private final c:Lcom/google/android/a/a/a/v;

.field private final d:Lcom/google/android/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/a/a/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a/t;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/google/android/a/a/a/t;->b:Lorg/json/JSONObject;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/google/android/a/a/a/a;Lcom/google/android/a/a/a/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/a/a/a/t;->d:Lcom/google/android/a/a/a/a;

    .line 34
    iput-object p2, p0, Lcom/google/android/a/a/a/t;->c:Lcom/google/android/a/a/a/v;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 12
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 40
    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v5, v1, [Lorg/json/JSONArray;

    move v3, v0

    .line 42
    :goto_f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v3, v0, :cond_16

    .line 90
    :goto_15
    return-void

    .line 43
    :cond_16
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    aput-object v0, v5, v3

    .line 44
    aget-object v0, v5, v3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/google/android/a/a/a/t;->d:Lcom/google/android/a/a/a/a;

    invoke-virtual {v1, v0}, Lcom/google/android/a/a/a/a;->a(I)V

    .line 46
    aget-object v1, v5, v3

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 47
    sget-object v1, Lcom/google/android/a/a/a/t;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Channel array is: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_70

    .line 53
    if-ne v0, v9, :cond_55

    .line 55
    iget-object v1, p0, Lcom/google/android/a/a/a/t;->d:Lcom/google/android/a/a/a/a;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_55} :catch_a7

    .line 58
    :cond_55
    if-le v0, v9, :cond_8f

    .line 61
    const/4 v0, 0x0

    :try_start_58
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5b} :catch_77
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_a7

    move-result-object v1

    .line 62
    :try_start_5c
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v9, :cond_74

    .line 63
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_66} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_66} :catch_a7

    move-result-object v0

    .line 71
    :goto_67
    :try_start_67
    iget-object v6, p0, Lcom/google/android/a/a/a/t;->c:Lcom/google/android/a/a/a/v;

    if-eqz v6, :cond_70

    .line 72
    iget-object v6, p0, Lcom/google/android/a/a/a/t;->c:Lcom/google/android/a/a/a/v;

    invoke-interface {v6, v1, v0}, Lcom/google/android/a/a/a/v;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_a7

    .line 42
    :cond_70
    :goto_70
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_f

    .line 65
    :cond_74
    :try_start_74
    sget-object v0, Lcom/google/android/a/a/a/t;->b:Lorg/json/JSONObject;
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_76} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_76} :catch_a7

    goto :goto_67

    .line 67
    :catch_77
    move-exception v0

    move-object v1, v2

    .line 68
    :goto_79
    :try_start_79
    sget-object v6, Lcom/google/android/a/a/a/t;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected array format"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_67

    .line 75
    :cond_8f
    if-nez v0, :cond_70

    .line 78
    iget-object v0, p0, Lcom/google/android/a/a/a/t;->d:Lcom/google/android/a/a/a/a;

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/a/a;->b(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_70

    .line 80
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_a6} :catch_a7

    goto :goto_70

    .line 87
    :catch_a7
    move-exception v0

    .line 88
    sget-object v1, Lcom/google/android/a/a/a/t;->a:Ljava/lang/String;

    const-string v2, "Chunk stream error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 67
    :catch_b1
    move-exception v0

    goto :goto_79
.end method
