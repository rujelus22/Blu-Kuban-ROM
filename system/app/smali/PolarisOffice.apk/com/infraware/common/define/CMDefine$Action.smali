.class public Lcom/infraware/common/define/CMDefine$Action;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Action"
.end annotation


# static fields
.field public static final ADD_ACCOUNT:Ljava/lang/String; = "com.infraware.polarisoffice.ADD_ACCOUNT"

.field public static final CLOSE:Ljava/lang/String; = "com.infraware.polarisoffice.CLOSE"

.field public static final DEACTIVE:Ljava/lang/String; = "com.infraware.polarisoffice.DEACTIVE"


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$Action;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
