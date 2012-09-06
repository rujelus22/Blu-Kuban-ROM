.class Lcom/google/android/maps/driveabout/app/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aC;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const/16 v0, 0x54

    if-ne p2, v0, :cond_6

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
