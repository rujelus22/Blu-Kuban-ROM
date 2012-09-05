.class final enum Lcom/sec/android/widgetapp/calculator/Panel$State;
.super Ljava/lang/Enum;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/calculator/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/widgetapp/calculator/Panel$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/widgetapp/calculator/Panel$State;

.field public static final enum ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field public static final enum ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field public static final enum FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field public static final enum READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field public static final enum TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    const-string v1, "ABOUT_TO_ANIMATE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/widgetapp/calculator/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    new-instance v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    const-string v1, "ANIMATING"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/widgetapp/calculator/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    new-instance v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/widgetapp/calculator/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    new-instance v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    const-string v1, "TRACKING"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/widgetapp/calculator/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    new-instance v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    const-string v1, "FLYING"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/widgetapp/calculator/Panel$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->ANIMATING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->$VALUES:[Lcom/sec/android/widgetapp/calculator/Panel$State;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/widgetapp/calculator/Panel$State;
    .registers 2
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/widgetapp/calculator/Panel$State;
    .registers 1

    .prologue
    .line 106
    sget-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->$VALUES:[Lcom/sec/android/widgetapp/calculator/Panel$State;

    invoke-virtual {v0}, [Lcom/sec/android/widgetapp/calculator/Panel$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object v0
.end method
