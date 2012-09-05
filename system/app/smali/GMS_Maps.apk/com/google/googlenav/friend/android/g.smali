.class Lcom/google/googlenav/friend/android/g;
.super Lcom/google/googlenav/friend/android/f;


# instance fields
.field final synthetic c:Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;Landroid/database/Cursor;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/friend/android/g;->c:Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/friend/android/f;-><init>(Lcom/google/googlenav/friend/android/e;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/google/googlenav/friend/android/ContactsAccessorSdk5;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
