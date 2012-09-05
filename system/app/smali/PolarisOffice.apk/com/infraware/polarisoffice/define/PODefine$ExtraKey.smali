.class public Lcom/infraware/polarisoffice/define/PODefine$ExtraKey;
.super Ljava/lang/Object;
.source "PODefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/define/PODefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraKey"
.end annotation


# static fields
.field public static final CURRENT_TAB:Ljava/lang/String; = "key_current_tab"

.field public static final IS_ROOT:Ljava/lang/String; = "key_is_root"

.field public static final LOGIN_ID:Ljava/lang/String; = "key_login_id"

.field public static final SEARCH_KEY:Ljava/lang/String; = "key_search_key"

.field public static final SEARCH_PATH:Ljava/lang/String; = "key_search_path"

.field public static final SEARCH_TYPE:Ljava/lang/String; = "key_search_type"

.field public static final SHOW_TIME:Ljava/lang/String; = "key_show_time"

.field public static final STORAGE_PATH:Ljava/lang/String; = "key_storage_path"

.field public static final STORAGE_TYPE:Ljava/lang/String; = "key_storage_type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
