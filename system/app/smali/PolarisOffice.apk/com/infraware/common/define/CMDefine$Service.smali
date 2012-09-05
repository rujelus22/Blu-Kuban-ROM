.class public Lcom/infraware/common/define/CMDefine$Service;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Service"
.end annotation


# static fields
.field public static final BOXNET:Ljava/lang/String; = "Box.net"

.field public static final GOOGLE:Ljava/lang/String; = "Google docs"

.field public static final ROOT:Ljava/lang/String; = "ROOT"


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 8
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$Service;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
