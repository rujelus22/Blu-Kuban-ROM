.class public final enum Los;
.super Ljava/lang/Enum;
.source "DialogUtility.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Los;",
        ">;",
        "Landroid/content/DialogInterface$OnKeyListener;"
    }
.end annotation


# static fields
.field public static final enum a:Los;

.field private static final synthetic a:[Los;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Los;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Los;-><init>(Ljava/lang/String;I)V

    sput-object v0, Los;->a:Los;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Los;

    sget-object v1, Los;->a:Los;

    aput-object v1, v0, v2

    sput-object v0, Los;->a:[Los;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Los;
    .registers 2
    .parameter

    .prologue
    .line 34
    const-class v0, Los;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Los;

    return-object v0
.end method

.method public static values()[Los;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Los;->a:[Los;

    invoke-virtual {v0}, [Los;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Los;

    return-object v0
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const/16 v0, 0x54

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
