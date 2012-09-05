.class public Lcom/infraware/common/define/CMDefine$Config$Key;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Key"
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "ACCOUNT"

.field public static final BACKUP:Ljava/lang/String; = "BACKUP"

.field public static final CUSTZOOM:Ljava/lang/String; = "CUST_ZOOM"

.field public static final LIVEUPDATE:Ljava/lang/String; = "LIVE_UPDATE"

.field public static final PIVOTLOCK:Ljava/lang/String; = "PIVOT_LOCK"

.field public static final SHOWEXT:Ljava/lang/String; = "SHOW_EXT"


# instance fields
.field final synthetic this$1:Lcom/infraware/common/define/CMDefine$Config;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine$Config;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$Config$Key;->this$1:Lcom/infraware/common/define/CMDefine$Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
