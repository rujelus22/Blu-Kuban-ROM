.class public final enum Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;
.super Ljava/lang/Enum;
.source "InputMethodView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputMethodEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

.field public static final enum ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

.field public static final enum INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

.field public static final enum PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

.field public static final enum SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    const-string v1, "ACCEPT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    .line 117
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    .line 119
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    .line 121
    new-instance v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    .line 113
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->ACCEPT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->PAUSE:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->SWITCH:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->$VALUES:[Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

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
    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;
    .registers 2
    .parameter "name"

    .prologue
    .line 113
    const-class v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->$VALUES:[Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    return-object v0
.end method
