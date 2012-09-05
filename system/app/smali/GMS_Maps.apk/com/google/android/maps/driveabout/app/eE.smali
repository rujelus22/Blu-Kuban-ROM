.class Lcom/google/android/maps/driveabout/app/eE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eF;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/eC;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/eE;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_3
.end method
