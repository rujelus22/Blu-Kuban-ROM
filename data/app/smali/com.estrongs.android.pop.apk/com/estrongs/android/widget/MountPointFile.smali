.class Lcom/estrongs/android/widget/MountPointFile;
.super Lcom/estrongs/android/widget/ESVfsFile;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private displayName:Ljava/lang/String;

.field private iconResId:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/estrongs/android/widget/ESVfsFile;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V

    iput p2, p0, Lcom/estrongs/android/widget/MountPointFile;->iconResId:I

    iput-object p4, p0, Lcom/estrongs/android/widget/MountPointFile;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/estrongs/android/widget/MountPointFile;-><init>(Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exists()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getIconResId()I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/widget/MountPointFile;->iconResId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/MountPointFile;->displayName:Ljava/lang/String;

    return-object v0
.end method
