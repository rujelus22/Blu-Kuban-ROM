.class public final enum Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;
.super Ljava/lang/Enum;
.source "Ui3dDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERequestPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

.field public static final enum eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

.field public static final enum eSelectedCity:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

.field public static final enum eSelectedTZ:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

.field public static final enum eUnselected:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    const-string v1, "eSelectedCity"

    invoke-direct {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedCity:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    const-string v1, "eSelectedTZ"

    invoke-direct {v0, v1, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedTZ:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    const-string v1, "eUnselected"

    invoke-direct {v0, v1, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eUnselected:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    .line 24
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    const-string v1, "eLast"

    invoke-direct {v0, v1, v5}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedCity:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedTZ:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eUnselected:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->$VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;
    .registers 2
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    return-object v0
.end method

.method public static values()[Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->$VALUES:[Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v0}, [Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    return-object v0
.end method
