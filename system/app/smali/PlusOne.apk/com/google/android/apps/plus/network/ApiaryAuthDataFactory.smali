.class public Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;
.super Ljava/lang/Object;
.source "ApiaryAuthDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;,
        Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    }
.end annotation


# static fields
.field private static final sAuthDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->sAuthDatas:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getAuthData(Ljava/lang/String;)Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    .registers 4
    .parameter "scope"

    .prologue
    .line 112
    sget-object v2, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->sAuthDatas:Ljava/util/Map;

    monitor-enter v2

    .line 113
    :try_start_3
    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->sAuthDatas:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;

    .line 114
    .local v0, data:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    if-nez v0, :cond_17

    .line 115
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;

    .end local v0           #data:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthDataImpl;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v0       #data:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    sget-object v1, Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory;->sAuthDatas:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_17
    monitor-exit v2

    return-object v0

    .line 119
    .end local v0           #data:Lcom/google/android/apps/plus/network/ApiaryAuthDataFactory$ApiaryAuthData;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
