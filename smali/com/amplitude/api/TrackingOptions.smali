.class public Lcom/amplitude/api/TrackingOptions;
.super Ljava/lang/Object;
.source "TrackingOptions.java"


# static fields
.field private static COPPA_CONTROL_PROPERTIES:[Ljava/lang/String;

.field private static SERVER_SIDE_PROPERTIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field disabledFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    const-class v0, Lcom/amplitude/api/TrackingOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/TrackingOptions;->TAG:Ljava/lang/String;

    const-string v1, "city"

    const-string v2, "country"

    const-string v3, "dma"

    const-string v4, "ip_address"

    const-string v5, "lat_lng"

    const-string v6, "region"

    .line 12
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/TrackingOptions;->SERVER_SIDE_PROPERTIES:[Ljava/lang/String;

    const-string v0, "adid"

    const-string v1, "city"

    const-string v2, "ip_address"

    const-string v3, "lat_lng"

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/TrackingOptions;->COPPA_CONTROL_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    return-void
.end method

.method static copyOf(Lcom/amplitude/api/TrackingOptions;)Lcom/amplitude/api/TrackingOptions;
    .locals 2

    .line 218
    new-instance v0, Lcom/amplitude/api/TrackingOptions;

    invoke-direct {v0}, Lcom/amplitude/api/TrackingOptions;-><init>()V

    .line 219
    iget-object p0, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    invoke-direct {v0, v1}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private disableTrackingField(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static forCoppaControl()Lcom/amplitude/api/TrackingOptions;
    .locals 5

    .line 227
    new-instance v0, Lcom/amplitude/api/TrackingOptions;

    invoke-direct {v0}, Lcom/amplitude/api/TrackingOptions;-><init>()V

    .line 228
    sget-object v1, Lcom/amplitude/api/TrackingOptions;->COPPA_CONTROL_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 229
    invoke-direct {v0, v4}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private shouldTrackField(Ljava/lang/String;)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public disableAdid()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "adid"

    .line 31
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableApiLevel()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "api_level"

    .line 148
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableCarrier()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "carrier"

    .line 40
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableCity()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "city"

    .line 49
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableCountry()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "country"

    .line 58
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableDeviceBrand()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "device_brand"

    .line 67
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableDeviceManufacturer()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "device_manufacturer"

    .line 76
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableDeviceModel()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "device_model"

    .line 85
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableDma()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "dma"

    .line 94
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableIpAddress()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "ip_address"

    .line 103
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableLanguage()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "language"

    .line 112
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableLatLng()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "lat_lng"

    .line 121
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableOsName()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "os_name"

    .line 130
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableOsVersion()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "os_version"

    .line 139
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disablePlatform()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "platform"

    .line 157
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableRegion()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "region"

    .line 166
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public disableVersionName()Lcom/amplitude/api/TrackingOptions;
    .locals 1

    const-string v0, "version_name"

    .line 175
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 246
    :cond_2
    check-cast p1, Lcom/amplitude/api/TrackingOptions;

    .line 247
    iget-object p1, p1, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    iget-object v0, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getApiPropertiesTrackingOptions()Lorg/json/JSONObject;
    .locals 8

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 193
    :cond_0
    sget-object v1, Lcom/amplitude/api/TrackingOptions;->SERVER_SIDE_PROPERTIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 194
    iget-object v6, p0, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 198
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v6

    sget-object v7, Lcom/amplitude/api/TrackingOptions;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method mergeIn(Lcom/amplitude/api/TrackingOptions;)Lcom/amplitude/api/TrackingOptions;
    .locals 1

    .line 210
    iget-object p1, p1, Lcom/amplitude/api/TrackingOptions;->disabledFields:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->disableTrackingField(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method shouldTrackAdid()Z
    .locals 1

    const-string v0, "adid"

    .line 36
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackApiLevel()Z
    .locals 1

    const-string v0, "api_level"

    .line 153
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackCarrier()Z
    .locals 1

    const-string v0, "carrier"

    .line 45
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackCity()Z
    .locals 1

    const-string v0, "city"

    .line 54
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackCountry()Z
    .locals 1

    const-string v0, "country"

    .line 63
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackDeviceBrand()Z
    .locals 1

    const-string v0, "device_brand"

    .line 72
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackDeviceManufacturer()Z
    .locals 1

    const-string v0, "device_manufacturer"

    .line 81
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackDeviceModel()Z
    .locals 1

    const-string v0, "device_model"

    .line 90
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackDma()Z
    .locals 1

    const-string v0, "dma"

    .line 99
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackIpAddress()Z
    .locals 1

    const-string v0, "ip_address"

    .line 108
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackLanguage()Z
    .locals 1

    const-string v0, "language"

    .line 117
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackLatLng()Z
    .locals 1

    const-string v0, "lat_lng"

    .line 126
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackOsName()Z
    .locals 1

    const-string v0, "os_name"

    .line 135
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackOsVersion()Z
    .locals 1

    const-string v0, "os_version"

    .line 144
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackPlatform()Z
    .locals 1

    const-string v0, "platform"

    .line 162
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackRegion()Z
    .locals 1

    const-string v0, "region"

    .line 171
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method shouldTrackVersionName()Z
    .locals 1

    const-string v0, "version_name"

    .line 180
    invoke-direct {p0, v0}, Lcom/amplitude/api/TrackingOptions;->shouldTrackField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
