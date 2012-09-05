.class final enum Lcom/cooliris/media/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/cooliris/media/HighlightView$ModifyMode;

.field public static final enum None:Lcom/cooliris/media/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    new-instance v0, Lcom/cooliris/media/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    new-instance v0, Lcom/cooliris/media/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->Move:Lcom/cooliris/media/HighlightView$ModifyMode;

    new-instance v0, Lcom/cooliris/media/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/cooliris/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

    .line 376
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cooliris/media/HighlightView$ModifyMode;

    sget-object v1, Lcom/cooliris/media/HighlightView$ModifyMode;->None:Lcom/cooliris/media/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cooliris/media/HighlightView$ModifyMode;->Move:Lcom/cooliris/media/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cooliris/media/HighlightView$ModifyMode;->Grow:Lcom/cooliris/media/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->$VALUES:[Lcom/cooliris/media/HighlightView$ModifyMode;

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
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/HighlightView$ModifyMode;
    .registers 2
    .parameter

    .prologue
    .line 376
    const-class v0, Lcom/cooliris/media/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/HighlightView$ModifyMode;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/HighlightView$ModifyMode;
    .registers 1

    .prologue
    .line 376
    sget-object v0, Lcom/cooliris/media/HighlightView$ModifyMode;->$VALUES:[Lcom/cooliris/media/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/cooliris/media/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/HighlightView$ModifyMode;

    return-object v0
.end method
