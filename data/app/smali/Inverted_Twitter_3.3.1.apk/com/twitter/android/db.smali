.class public final Lcom/twitter/android/db;
.super Lcom/twitter/android/dd;


# instance fields
.field a:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/twitter/android/dd;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/db;->a:Landroid/location/Location;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/db;->i:Ljava/lang/String;

    return-void
.end method
