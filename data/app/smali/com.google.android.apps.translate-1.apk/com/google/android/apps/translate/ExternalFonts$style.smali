.class public final enum Lcom/google/android/apps/translate/ExternalFonts$style;
.super Ljava/lang/Enum;
.source "ExternalFonts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/ExternalFonts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/translate/ExternalFonts$style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/translate/ExternalFonts$style;

.field public static final enum TextAppearance_Default:Lcom/google/android/apps/translate/ExternalFonts$style;

.field public static final enum TextAppearance_Huge:Lcom/google/android/apps/translate/ExternalFonts$style;

.field public static final enum TextAppearance_Large:Lcom/google/android/apps/translate/ExternalFonts$style;

.field public static final enum TextAppearance_Medium:Lcom/google/android/apps/translate/ExternalFonts$style;

.field public static final enum TextAppearance_Small:Lcom/google/android/apps/translate/ExternalFonts$style;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    const-string v1, "TextAppearance_Small"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/translate/ExternalFonts$style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Small:Lcom/google/android/apps/translate/ExternalFonts$style;

    .line 35
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    const-string v1, "TextAppearance_Medium"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/translate/ExternalFonts$style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Medium:Lcom/google/android/apps/translate/ExternalFonts$style;

    .line 36
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    const-string v1, "TextAppearance_Default"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/translate/ExternalFonts$style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Default:Lcom/google/android/apps/translate/ExternalFonts$style;

    .line 37
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    const-string v1, "TextAppearance_Large"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/translate/ExternalFonts$style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Large:Lcom/google/android/apps/translate/ExternalFonts$style;

    .line 38
    new-instance v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    const-string v1, "TextAppearance_Huge"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/translate/ExternalFonts$style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Huge:Lcom/google/android/apps/translate/ExternalFonts$style;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/translate/ExternalFonts$style;

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Small:Lcom/google/android/apps/translate/ExternalFonts$style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Medium:Lcom/google/android/apps/translate/ExternalFonts$style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Default:Lcom/google/android/apps/translate/ExternalFonts$style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Large:Lcom/google/android/apps/translate/ExternalFonts$style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/translate/ExternalFonts$style;->TextAppearance_Huge:Lcom/google/android/apps/translate/ExternalFonts$style;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->$VALUES:[Lcom/google/android/apps/translate/ExternalFonts$style;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/translate/ExternalFonts$style;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/ExternalFonts$style;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/translate/ExternalFonts$style;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/translate/ExternalFonts$style;->$VALUES:[Lcom/google/android/apps/translate/ExternalFonts$style;

    invoke-virtual {v0}, [Lcom/google/android/apps/translate/ExternalFonts$style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/translate/ExternalFonts$style;

    return-object v0
.end method
