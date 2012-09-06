.class final enum Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;
.super Ljava/lang/Enum;
.source "OutputPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/OutputPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

.field public static final enum ERROR:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

.field public static final enum MESSAGE:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

.field public static final enum NORMAL:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->MESSAGE:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    new-instance v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->NORMAL:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    new-instance v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->ERROR:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    sget-object v1, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->MESSAGE:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->NORMAL:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->ERROR:Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->$VALUES:[Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;
    .registers 2
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->$VALUES:[Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/translation/OutputPanelView$TextType;

    return-object v0
.end method
