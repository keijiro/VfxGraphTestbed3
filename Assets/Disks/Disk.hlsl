void RenderDisk_float(float2 UV, float Time, float Seed, out float Alpha)
{
    uint seed = (uint)(Seed * 2);
    float org = float2(Hash(seed), Hash(Seed + 1));

    float li = length(UV - lerp(org, 0.5, Time * Time * Time * Time));
    float lo = length(UV - 0.5);

    Alpha = (lo < 0.48) - (li < 0.48 * Time);
}
